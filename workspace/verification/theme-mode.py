from pathlib import Path
from tempfile import TemporaryDirectory
from unittest.mock import patch, MagicMock
from PIL import Image
from caelestia.utils import wallpaper as w
from caelestia.utils.material import get_dynamic_settings

assert get_dynamic_settings()['mode'] == 'dark'
with TemporaryDirectory() as tmp:
    base = Path(tmp)
    wall = base / 'light.png'
    Image.new('RGB', (32, 32), 'white').save(wall)
    for mode in ('dark', 'light', 'auto'):
        scheme = MagicMock(name='scheme')
        scheme.name = 'dynamic'
        scheme.mode = 'dark'
        scheme.colours = {}
        settings = dict(get_dynamic_settings(), mode=mode)
        with patch.multiple(w, wallpaper_path_path=base/'path.txt', wallpaper_link_path=base/'current', wallpaper_thumbnail_path=base/'thumbnail.jpg', wallpapers_cache_dir=base/'cache'), patch.object(w, 'get_scheme', return_value=scheme), patch.object(w, 'get_dynamic_settings', return_value=settings), patch.object(w, 'get_thumb', return_value=wall), patch.object(w, 'get_smart_opts', return_value={'mode':'light','variant':'tonalspot'}), patch.object(w, 'apply_colours') as apply, patch.object(w, 'get_config', return_value={}):
            w.set_wallpaper(wall, no_smart=False)
            expected = 'dark' if mode == 'dark' else 'light'
            assert scheme.mode == expected, (mode, scheme.mode)
            assert apply.call_args.args[1] == expected
            print(f'Light wallpaper with preference {mode}: {scheme.mode}')
