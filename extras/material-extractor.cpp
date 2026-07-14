// SPDX-License-Identifier: Apache-2.0
// Uses the vendored Material Color Utilities reference implementation.

#include <QImage>

#include <algorithm>
#include <charconv>
#include <iomanip>
#include <iostream>
#include <memory>
#include <sstream>
#include <string>
#include <string_view>
#include <utility>
#include <vector>

#include "cpp/cam/hct.h"
#include "cpp/dynamiccolor/material_dynamic_colors.h"
#include "cpp/quantize/celebi.h"
#include "cpp/score/score.h"
#include "cpp/scheme/scheme_content.h"
#include "cpp/scheme/scheme_expressive.h"
#include "cpp/scheme/scheme_fidelity.h"
#include "cpp/scheme/scheme_fruit_salad.h"
#include "cpp/scheme/scheme_monochrome.h"
#include "cpp/scheme/scheme_neutral.h"
#include "cpp/scheme/scheme_rainbow.h"
#include "cpp/scheme/scheme_tonal_spot.h"
#include "cpp/scheme/scheme_vibrant.h"

namespace mcu = material_color_utilities;

namespace {

struct Options {
    QString image;
    std::string mode;
    std::string variant;
    double contrast = 0.0;
};

bool parseOptions(int argc, char* argv[], Options& options) {
    for (int i = 1; i < argc; ++i) {
        const std::string_view arg(argv[i]);
        if (arg == "--image" && i + 1 < argc) {
            options.image = QString::fromLocal8Bit(argv[++i]);
        } else if (arg == "--mode" && i + 1 < argc) {
            options.mode = argv[++i];
        } else if (arg == "--variant" && i + 1 < argc) {
            options.variant = argv[++i];
        } else if (arg == "--contrast" && i + 1 < argc) {
            const std::string_view value(argv[++i]);
            const auto [ptr, error] = std::from_chars(value.data(), value.data() + value.size(), options.contrast);
            if (error != std::errc{} || ptr != value.data() + value.size())
                return false;
        } else {
            return false;
        }
    }

    return !options.image.isEmpty() && (options.mode == "light" || options.mode == "dark");
}

std::unique_ptr<mcu::DynamicScheme> createScheme(const mcu::Hct& source, const Options& options) {
    const bool isDark = options.mode == "dark";
    if (options.variant == "content")
        return std::make_unique<mcu::SchemeContent>(source, isDark, options.contrast);
    if (options.variant == "expressive")
        return std::make_unique<mcu::SchemeExpressive>(source, isDark, options.contrast);
    if (options.variant == "fidelity")
        return std::make_unique<mcu::SchemeFidelity>(source, isDark, options.contrast);
    if (options.variant == "fruitsalad")
        return std::make_unique<mcu::SchemeFruitSalad>(source, isDark, options.contrast);
    if (options.variant == "monochrome")
        return std::make_unique<mcu::SchemeMonochrome>(source, isDark, options.contrast);
    if (options.variant == "neutral")
        return std::make_unique<mcu::SchemeNeutral>(source, isDark, options.contrast);
    if (options.variant == "rainbow")
        return std::make_unique<mcu::SchemeRainbow>(source, isDark, options.contrast);
    if (options.variant == "vibrant")
        return std::make_unique<mcu::SchemeVibrant>(source, isDark, options.contrast);
    return std::make_unique<mcu::SchemeTonalSpot>(source, isDark, options.contrast);
}

std::string hex(mcu::Argb colour) {
    std::ostringstream value;
    value << std::uppercase << std::hex << std::setfill('0') << std::setw(6) << (colour & 0x00FFFFFFU);
    return value.str();
}

void addRole(std::vector<std::pair<std::string, mcu::Argb>>& roles, std::string name, mcu::DynamicColor colour,
    const mcu::DynamicScheme& scheme) {
    roles.emplace_back(std::move(name), colour.GetArgb(scheme));
}

std::vector<std::pair<std::string, mcu::Argb>> rolesFor(const mcu::DynamicScheme& scheme) {
    std::vector<std::pair<std::string, mcu::Argb>> roles;
    roles.reserve(59);
#define ADD_ROLE(name, method) addRole(roles, name, mcu::MaterialDynamicColors::method(), scheme)
    ADD_ROLE("primaryPaletteKeyColor", PrimaryPaletteKeyColor);
    ADD_ROLE("secondaryPaletteKeyColor", SecondaryPaletteKeyColor);
    ADD_ROLE("tertiaryPaletteKeyColor", TertiaryPaletteKeyColor);
    ADD_ROLE("neutralPaletteKeyColor", NeutralPaletteKeyColor);
    ADD_ROLE("neutralVariantPaletteKeyColor", NeutralVariantPaletteKeyColor);
    ADD_ROLE("background", Background);
    ADD_ROLE("onBackground", OnBackground);
    ADD_ROLE("surface", Surface);
    ADD_ROLE("surfaceDim", SurfaceDim);
    ADD_ROLE("surfaceBright", SurfaceBright);
    ADD_ROLE("surfaceContainerLowest", SurfaceContainerLowest);
    ADD_ROLE("surfaceContainerLow", SurfaceContainerLow);
    ADD_ROLE("surfaceContainer", SurfaceContainer);
    ADD_ROLE("surfaceContainerHigh", SurfaceContainerHigh);
    ADD_ROLE("surfaceContainerHighest", SurfaceContainerHighest);
    ADD_ROLE("onSurface", OnSurface);
    ADD_ROLE("surfaceVariant", SurfaceVariant);
    ADD_ROLE("onSurfaceVariant", OnSurfaceVariant);
    ADD_ROLE("inverseSurface", InverseSurface);
    ADD_ROLE("inverseOnSurface", InverseOnSurface);
    ADD_ROLE("outline", Outline);
    ADD_ROLE("outlineVariant", OutlineVariant);
    ADD_ROLE("shadow", Shadow);
    ADD_ROLE("scrim", Scrim);
    ADD_ROLE("surfaceTint", SurfaceTint);
    ADD_ROLE("primary", Primary);
    ADD_ROLE("onPrimary", OnPrimary);
    ADD_ROLE("primaryContainer", PrimaryContainer);
    ADD_ROLE("onPrimaryContainer", OnPrimaryContainer);
    ADD_ROLE("inversePrimary", InversePrimary);
    ADD_ROLE("secondary", Secondary);
    ADD_ROLE("onSecondary", OnSecondary);
    ADD_ROLE("secondaryContainer", SecondaryContainer);
    ADD_ROLE("onSecondaryContainer", OnSecondaryContainer);
    ADD_ROLE("tertiary", Tertiary);
    ADD_ROLE("onTertiary", OnTertiary);
    ADD_ROLE("tertiaryContainer", TertiaryContainer);
    ADD_ROLE("onTertiaryContainer", OnTertiaryContainer);
    ADD_ROLE("error", Error);
    ADD_ROLE("onError", OnError);
    ADD_ROLE("errorContainer", ErrorContainer);
    ADD_ROLE("onErrorContainer", OnErrorContainer);
    ADD_ROLE("primaryFixed", PrimaryFixed);
    ADD_ROLE("primaryFixedDim", PrimaryFixedDim);
    ADD_ROLE("onPrimaryFixed", OnPrimaryFixed);
    ADD_ROLE("onPrimaryFixedVariant", OnPrimaryFixedVariant);
    ADD_ROLE("secondaryFixed", SecondaryFixed);
    ADD_ROLE("secondaryFixedDim", SecondaryFixedDim);
    ADD_ROLE("onSecondaryFixed", OnSecondaryFixed);
    ADD_ROLE("onSecondaryFixedVariant", OnSecondaryFixedVariant);
    ADD_ROLE("tertiaryFixed", TertiaryFixed);
    ADD_ROLE("tertiaryFixedDim", TertiaryFixedDim);
    ADD_ROLE("onTertiaryFixed", OnTertiaryFixed);
    ADD_ROLE("onTertiaryFixedVariant", OnTertiaryFixedVariant);
#undef ADD_ROLE
    return roles;
}

} // namespace

int main(int argc, char* argv[]) {
    Options options;
    if (!parseOptions(argc, argv, options)) {
        std::cerr << "Usage: material-extractor --image PATH --mode light|dark --variant NAME --contrast NUMBER\n";
        return 2;
    }

    const QImage image(options.image);
    if (image.isNull()) {
        std::cerr << "Unable to load image: " << options.image.toStdString() << '\n';
        return 1;
    }

    const QImage scaled = image.scaled(128, 128, Qt::KeepAspectRatio, Qt::FastTransformation).convertToFormat(QImage::Format_ARGB32);
    std::vector<mcu::Argb> pixels;
    pixels.reserve(static_cast<size_t>(scaled.width() * scaled.height()));
    for (int y = 0; y < scaled.height(); ++y) {
        for (int x = 0; x < scaled.width(); ++x)
            pixels.push_back(static_cast<mcu::Argb>(scaled.pixel(x, y)));
    }

    const auto quantized = mcu::QuantizeCelebi(pixels, 128);
    const auto ranked = mcu::RankedSuggestions(quantized.color_to_count);
    const mcu::Hct source(ranked.front());
    const auto scheme = createScheme(source, options);

    std::cout << '{';
    bool first = true;
    for (const auto& [name, colour] : rolesFor(*scheme)) {
        if (!first)
            std::cout << ',';
        first = false;
        std::cout << '"' << name << "\":\"" << hex(colour) << '"';
    }
    std::cout << "}\n";
}
