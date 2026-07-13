<script>
  import { onMount } from 'svelte';

  // --- MOCK AND INTERACTIVE STATE ---
  let activePage = 'main'; // main, applications, outputs, inputs
  let deviceConnected = true;
  let versionMismatch = false;
  let navSetting = 0; // 0: stream, 1: mute, 2: solo
  let navStreamOpen = false;
  let bindMode = false;
  let selectedChannel = 0;
  let cfgReloads = 0;
  
  let bindCursor = 0;
  let bindScroll = 0;
  const bindVisible = 8;
  
  let terminalFocused = false;

  // Mock list of all streams in the system (enriched streams)
  let streams = [
    { id: 101, name: "Firefox", kind: "source", appName: "Firefox", mediaName: "YouTube - Lo-Fi Beats for Coding" },
    { id: 102, name: "Spotify", kind: "source", appName: "Spotify", mediaName: "After Hours", artist: "The Weeknd", track: "After Hours" },
    { id: 103, name: "Discord", kind: "source", appName: "Discord", mediaName: "Voice Channel" },
    { id: 104, name: "System Out", kind: "sink", appName: "System Out", mediaName: "Built-in Audio Analog Stereo" },
    { id: 105, name: "Built-in Mic", kind: "mic", appName: "Built-in Mic", mediaName: "Internal Microphone" },
    { id: 106, name: "Steam", kind: "source", appName: "Steam", mediaName: "Counter-Strike 2" },
    { id: 107, name: "Obs Studio", kind: "source", appName: "Obs Studio", mediaName: "Desktop Audio Capture" },
    { id: 108, name: "Webcam Mic", kind: "mic", appName: "Webcam Mic", mediaName: "Logitech C920 Microphone" }
  ];

  // Channels state (equivalent to Model.channels)
  let channels = [
    {
      id: 0,
      name: "Firefox",
      appName: "Firefox",
      streamId: 101,
      userBound: true,
      kind: "source",
      state: "active",
      vol: 0.70,
      knob: 45,
      mute: false,
      solo: false,
      rec: false,
      stop: false,
      synced: true,
      faderPos: 0.70,
      isSplit: false,
      knobLabel: "",
      knobType: "",
      faderLabel: "",
      faderType: "",
      crossSinkAName: "",
      crossSinkBName: ""
    },
    {
      id: 1,
      name: "Spotify",
      appName: "Spotify",
      streamId: 102,
      userBound: true,
      kind: "source",
      state: "active",
      vol: 0.50,
      knob: 80,
      mute: false,
      solo: true,
      rec: false,
      stop: false,
      synced: true,
      faderPos: 0.50,
      isSplit: false,
      knobLabel: "",
      knobType: "",
      faderLabel: "",
      faderType: "",
      crossSinkAName: "",
      crossSinkBName: ""
    },
    {
      id: 2,
      name: "Discord",
      appName: "Discord",
      streamId: 103,
      userBound: true,
      kind: "source",
      state: "active",
      vol: 0.85,
      knob: 30,
      mute: true,
      solo: false,
      rec: false,
      stop: false,
      synced: true,
      faderPos: 0.85,
      isSplit: false,
      knobLabel: "",
      knobType: "",
      faderLabel: "",
      faderType: "",
      crossSinkAName: "",
      crossSinkBName: ""
    },
    {
      id: 3,
      name: "System Out",
      appName: "System Out",
      streamId: 104,
      userBound: true,
      kind: "sink",
      state: "active",
      vol: 0.90,
      knob: 100,
      mute: false,
      solo: false,
      rec: false,
      stop: false,
      synced: true,
      faderPos: 0.90,
      isSplit: false,
      knobLabel: "",
      knobType: "",
      faderLabel: "",
      faderType: "",
      crossSinkAName: "",
      crossSinkBName: ""
    },
    {
      id: 4,
      name: "Built-in Mic",
      appName: "Built-in Mic",
      streamId: 105,
      userBound: true,
      kind: "mic",
      state: "active",
      vol: 0.60,
      knob: 20,
      mute: false,
      solo: false,
      rec: true,
      stop: false,
      synced: true,
      faderPos: 0.60,
      isSplit: false,
      knobLabel: "",
      knobType: "",
      faderLabel: "",
      faderType: "",
      crossSinkAName: "",
      crossSinkBName: ""
    },
    {
      id: 5,
      name: "Steam",
      appName: "Steam",
      streamId: 106,
      userBound: true,
      kind: "source",
      state: "inactive",
      vol: 0.40,
      knob: 60,
      mute: false,
      solo: false,
      rec: false,
      stop: false,
      synced: true,
      faderPos: 0.40,
      isSplit: false,
      knobLabel: "",
      knobType: "",
      faderLabel: "",
      faderType: "",
      crossSinkAName: "",
      crossSinkBName: ""
    },
    {
      id: 6,
      name: "Split Demo",
      appName: "Firefox",
      streamId: 101,
      userBound: true,
      kind: "source",
      state: "active",
      vol: 0.65,
      knob: 64,
      mute: false,
      solo: false,
      rec: false,
      stop: false,
      synced: true,
      faderPos: 0.65,
      isSplit: true,
      knobLabel: "Music Vol",
      knobType: "playback",
      faderLabel: "System Vol",
      faderType: "output",
      crossSinkAName: "",
      crossSinkBName: ""
    },
    {
      id: 7,
      name: "Unbound",
      appName: "",
      streamId: null,
      userBound: false,
      kind: "source",
      state: "unbound",
      vol: 0.0,
      knob: 0,
      mute: false,
      solo: false,
      rec: false,
      stop: false,
      synced: true,
      faderPos: 0.0,
      isSplit: false,
      knobLabel: "",
      knobType: "",
      faderLabel: "",
      faderType: "",
      crossSinkAName: "",
      crossSinkBName: ""
    }
  ];

  // --- CORE TUI REPLICA LOGIC (FROM utils.go) ---
  function capitalize(s) {
    if (!s) return "";
    return s.charAt(0).toUpperCase() + s.slice(1);
  }

  function truncate(s, max) {
    if (!s) return "";
    if (s.length <= max) return s;
    return s.slice(0, max - 1) + "…";
  }

  function knobPct(knob) {
    return Math.round((knob / 127) * 100);
  }

  function faderBar(val, width) {
    const filled = Math.max(0, Math.min(width, Math.round(val * width)));
    return "█".repeat(filled) + "░".repeat(width - filled);
  }

  function getFaderRowChars(vol, rowIndex, totalHeight) {
    const filledCount = Math.round(vol * totalHeight);
    const isFilled = rowIndex >= (totalHeight - filledCount);
    return "  " + (isFilled ? "████" : "░░░░") + "  ";
  }

  function crossfadeBar(knob, width) {
    const inner = width - 2;
    if (inner < 1) return "◄►";
    const pos = Math.max(0, Math.min(inner - 1, Math.round((knob / 127) * (inner - 1))));
    return "◄" + "─".repeat(pos) + "┼" + "─".repeat(inner - 1 - pos) + "►";
  }

  function crossfaderLabel(nameA, nameB) {
    const a = truncate(nameA, 4) || "A";
    const b = truncate(nameB, 4) || "B";
    return `⇄ ${a}↔${b}`;
  }

  function pickupLabel(c) {
    const pct = `${Math.round(c.vol * 100)}%`.padStart(4, ' ');
    if (c.state === 'unbound' || c.synced) {
      return pct;
    }
    const arrow = c.faderPos > c.vol + 0.05 ? "↓" : (c.faderPos < c.vol - 0.05 ? "↑" : "~");
    return arrow + pct.trim();
  }

  // --- RECONCILING COMPONENT STATE ---
  $: selectedChObj = channels[selectedChannel];

  $: filteredStreams = streams.filter(s => {
    const isBoundElsewhere = channels.some(c => c.id !== selectedChannel && c.userBound && c.streamId === s.id);
    if (isBoundElsewhere) return false;

    if (activePage === "applications") return s.kind === "source";
    if (activePage === "outputs") return s.kind === "sink";
    if (activePage === "inputs") return s.kind === "mic";
    return true;
  });

  $: sortedFilteredStreams = [...filteredStreams].sort((a, b) => {
    const order = { 'source': 0, 'mic': 1, 'sink': 2 };
    return order[a.kind] - order[b.kind];
  });

  function clampBindScroll() {
    if (bindCursor < bindScroll) {
      bindScroll = bindCursor;
    } else if (bindCursor >= bindScroll + bindVisible) {
      bindScroll = bindCursor - bindVisible + 1;
    }
  }

  // --- ACTIONS ---
  function confirmBind() {
    if (sortedFilteredStreams.length === 0) return;
    const selectedStream = sortedFilteredStreams[bindCursor];
    const ch = channels[selectedChannel];
    ch.streamId = selectedStream.id;
    ch.name = selectedStream.name;
    ch.appName = selectedStream.appName;
    ch.kind = selectedStream.kind;
    ch.state = "active";
    ch.mediaName = selectedStream.mediaName;
    ch.userBound = true;
    channels = [...channels];
    bindMode = false;
  }

  function unbindChannel() {
    const ch = channels[selectedChannel];
    ch.streamId = null;
    ch.name = "Unbound";
    ch.appName = "";
    ch.state = "unbound";
    ch.mediaName = "";
    ch.artist = "";
    ch.track = "";
    ch.userBound = false;
    channels = [...channels];
  }

  function cycleStream(dir) {
    if (sortedFilteredStreams.length === 0) return;
    const ch = channels[selectedChannel];
    let idx = sortedFilteredStreams.findIndex(s => s.id === ch.streamId);
    if (idx === -1) {
      idx = 0;
    } else {
      idx = (idx + dir + sortedFilteredStreams.length) % sortedFilteredStreams.length;
    }
    const nextStream = sortedFilteredStreams[idx];
    ch.streamId = nextStream.id;
    ch.name = nextStream.name;
    ch.appName = nextStream.appName;
    ch.kind = nextStream.kind;
    ch.state = "active";
    ch.mediaName = nextStream.mediaName;
    ch.userBound = true;
    channels = [...channels];
  }

  // --- PRESETS ---
  const presets = {
    default: { activePage: 'main', bindMode: false, navStreamOpen: false, navSetting: 0, deviceConnected: true, versionMismatch: false, selectedChannel: 0 },
    binding: { activePage: 'main', bindMode: true, navStreamOpen: false, navSetting: 0, deviceConnected: true, versionMismatch: false, selectedChannel: 0, bindCursor: 1 },
    navStream: { activePage: 'main', bindMode: false, navStreamOpen: true, navSetting: 0, deviceConnected: true, versionMismatch: false, selectedChannel: 1 },
    outputs: { activePage: 'outputs', bindMode: true, navStreamOpen: false, navSetting: 0, deviceConnected: true, versionMismatch: false, selectedChannel: 3, bindCursor: 0 },
    noMidi: { activePage: 'main', bindMode: false, navStreamOpen: false, navSetting: 0, deviceConnected: false, versionMismatch: false, selectedChannel: 0 },
    mismatch: { activePage: 'main', bindMode: false, navStreamOpen: false, navSetting: 0, deviceConnected: true, versionMismatch: true, selectedChannel: 0 }
  };

  function applyPreset(key) {
    const p = presets[key];
    activePage = p.activePage;
    bindMode = p.bindMode;
    navStreamOpen = p.navStreamOpen;
    navSetting = p.navSetting;
    deviceConnected = p.deviceConnected;
    versionMismatch = p.versionMismatch;
    selectedChannel = p.selectedChannel;
    if (p.bindCursor !== undefined) {
      bindCursor = p.bindCursor;
      clampBindScroll();
    }
  }

  // --- KEYBOARD CAPTURE ---
  function handleKeyDown(event) {
    if (!terminalFocused) return;
    
    const key = event.key;
    if (['ArrowLeft', 'ArrowRight', 'ArrowUp', 'ArrowDown', 'Enter', 'Escape'].includes(key)) {
      event.preventDefault();
    }

    if (key === 'ArrowLeft') {
      if (!bindMode && !navStreamOpen) {
        selectedChannel = (selectedChannel - 1 + 8) % 8;
      } else if (navStreamOpen) {
        cycleStream(-1);
      }
    } else if (key === 'ArrowRight') {
      if (!bindMode && !navStreamOpen) {
        selectedChannel = (selectedChannel + 1) % 8;
      } else if (navStreamOpen) {
        cycleStream(1);
      }
    } else if (key === 'ArrowUp') {
      if (bindMode || navStreamOpen) {
        if (sortedFilteredStreams.length > 0) {
          bindCursor = (bindCursor - 1 + sortedFilteredStreams.length) % sortedFilteredStreams.length;
          clampBindScroll();
        }
      } else {
        navSetting = (navSetting - 1 + 3) % 3;
      }
    } else if (key === 'ArrowDown') {
      if (bindMode || navStreamOpen) {
        if (sortedFilteredStreams.length > 0) {
          bindCursor = (bindCursor + 1) % sortedFilteredStreams.length;
          clampBindScroll();
        }
      } else {
        navSetting = (navSetting + 1) % 3;
      }
    } else if (key === 'Enter') {
      if (bindMode) {
        confirmBind();
      } else {
        bindMode = true;
        bindCursor = 0;
        bindScroll = 0;
      }
    } else if (key === 'Escape') {
      bindMode = false;
      navStreamOpen = false;
    } else if (key === 'u' || key === 'U') {
      unbindChannel();
    } else if (key === 'r' || key === 'R') {
      cfgReloads++;
    } else if (key === 'q' || key === 'Q') {
      deviceConnected = !deviceConnected;
    }
  }

  // Focus Handling
  function focusTerminal() {
    terminalFocused = true;
  }

  function unfocusTerminal() {
    terminalFocused = false;
  }

  function handleOutsideClick(event) {
    const term = document.querySelector('.terminal-window');
    if (term && !term.contains(event.target)) {
      unfocusTerminal();
    }
  }

  onMount(() => {
    window.addEventListener('click', handleOutsideClick);
    return () => {
      window.removeEventListener('click', handleOutsideClick);
    };
  });

  // --- DYNAMIC RENDERING DETAILS ---
  function getStripBorderColor(ch) {
    if (bindMode && selectedChannel === ch.id) return '#ffff00'; // gold
    if (ch.state === 'unbound' || ch.state === 'inactive') {
      return selectedChannel === ch.id ? '#5f87ff' : '#2d2d2d';
    }
    if (selectedChannel === ch.id) {
      if (ch.kind === 'mic') return '#FF4444';
      if (ch.kind === 'sink') return '#4488FF';
      return '#44FF88';
    } else {
      if (ch.kind === 'mic') return '#8b1a1a';
      if (ch.kind === 'sink') return '#1a5b8b';
      return '#1a8b4b';
    }
  }

  function getStripTextColor(ch) {
    if (ch.state === 'unbound' || ch.state === 'inactive') return '#585858';
    return selectedChannel === ch.id ? '#ffffff' : '#a0a0a0';
  }

  function getUnifiedHeader(ch) {
    if (ch.state === 'unbound') return `CH${ch.id + 1}`;
    return truncate(`CH${ch.id + 1} - ${capitalize(ch.appName || ch.name)}`, 12);
  }

  function getUnifiedName(ch) {
    if (ch.state === 'unbound') return '---';
    const isSelected = selectedChannel === ch.id && !bindMode;
    const isStreamFocused = isSelected && navSetting === 0;
    
    let name = ch.name;
    if (ch.artist || ch.track) {
      name = ch.artist ? ch.artist : ch.track;
    }
    
    if (isStreamFocused) {
      name = '⇌ ' + name;
    }
    return truncate(name, 12);
  }

  function getUnifiedSubtitle(ch) {
    if (ch.state === 'inactive') return '⊗ offline';
    if (ch.state === 'unbound') return '';
    if (ch.artist && ch.track) return truncate(ch.track, 12);
    return truncate(ch.mediaName || '', 12);
  }

  function getUnifiedKnobLine(ch) {
    if (ch.crossSinkAName && ch.crossSinkBName) {
      return truncate(crossfaderLabel(ch.crossSinkAName, ch.crossSinkBName), 12);
    }
    return `◎${knobPct(ch.knob).toString().padStart(3, ' ')}%`;
  }

  function getUnifiedKnobBar(ch) {
    if (ch.crossSinkAName && ch.crossSinkBName) {
      return crossfadeBar(ch.knob, 12);
    }
    return faderBar(ch.knob / 127, 12);
  }

  function setVolume(chId, pct) {
    channels[chId].vol = pct;
    channels[chId].faderPos = pct; // sync
    channels = [...channels];
  }

  function toggleMute(chId) {
    channels[chId].mute = !channels[chId].mute;
    updateSoloMutes();
    channels = [...channels];
  }

  function toggleSolo(chId) {
    channels[chId].solo = !channels[chId].solo;
    updateSoloMutes();
    channels = [...channels];
  }

  function updateSoloMutes() {
    const anySolo = channels.some(c => c.solo);
    channels = channels.map(c => ({
      ...c,
      soloMuted: anySolo && !c.solo
    }));
  }

  function handleKnobClick(event, chId) {
    const rect = event.currentTarget.getBoundingClientRect();
    const x = event.clientX - rect.left;
    const pct = Math.max(0, Math.min(1, x / rect.width));
    channels[chId].knob = Math.round(pct * 127);
    channels = [...channels];
  }

  function isKindHeaderNeeded(idx) {
    if (idx === 0) return true;
    return sortedFilteredStreams[idx].kind !== sortedFilteredStreams[idx - 1].kind;
  }

  function getKindHeaderLabel(kind) {
    if (kind === 'mic') return ' Microphones';
    if (kind === 'sink') return ' Outputs';
    return ' Sources';
  }

  function getKindTag(kind) {
    if (kind === 'mic') return '[mic]';
    if (kind === 'sink') return '[out]';
    return '[src]';
  }
</script>

<svelte:window on:keydown={handleKeyDown} />

<div class="sandbox-container">
  <!-- Interactive Sandbox Settings (Sidebar) -->
  <aside class="sidebar-panel">
    <div class="sidebar-header">
      <div class="badge">PROTOTYPE</div>
      <h2>SMC Mixer Sandbox</h2>
      <p class="desc">A web environment to explore the layout and visual flow of the `smc-mixer` TUI.</p>
    </div>

    <!-- Presets Section -->
    <div class="sidebar-section">
      <h3>Layout Scenarios</h3>
      <div class="presets-grid">
        <button class="preset-btn" on:click={() => applyPreset('default')}>Default view</button>
        <button class="preset-btn" on:click={() => applyPreset('binding')}>Bind mode (CH1)</button>
        <button class="preset-btn" on:click={() => applyPreset('navStream')}>Nav stream cycle (CH2)</button>
        <button class="preset-btn" on:click={() => applyPreset('outputs')}>Outputs filtering</button>
        <button class="preset-btn" on:click={() => applyPreset('noMidi')}>Device missing</button>
        <button class="preset-btn" on:click={() => applyPreset('mismatch')}>Version mismatch</button>
      </div>
    </div>

    <!-- Global State Editor -->
    <div class="sidebar-section">
      <h3>Global States</h3>
      
      <div class="control-row">
        <label for="page-select">Active Page</label>
        <select id="page-select" bind:value={activePage}>
          <option value="main">main</option>
          <option value="applications">applications</option>
          <option value="outputs">outputs</option>
          <option value="inputs">inputs</option>
        </select>
      </div>

      <div class="control-row inline">
        <label>
          <input type="checkbox" bind:checked={deviceConnected} />
          MIDI Connected
        </label>
        <label>
          <input type="checkbox" bind:checked={versionMismatch} />
          Version Mismatch
        </label>
      </div>

      <div class="control-row inline">
        <label>
          <input type="checkbox" bind:checked={bindMode} on:change={() => { if(bindMode) navStreamOpen = false; }} />
          Bind Mode Panel
        </label>
        <label>
          <input type="checkbox" bind:checked={navStreamOpen} on:change={() => { if(navStreamOpen) bindMode = false; }} />
          Nav Stream Panel
        </label>
      </div>

      <div class="control-row">
        <label for="nav-setting">Nav Setting Focus</label>
        <select id="nav-setting" bind:value={navSetting}>
          <option value={0}>stream (⇌ name)</option>
          <option value={1}>mute ([M])</option>
          <option value={2}>solo ([S])</option>
        </select>
      </div>
    </div>

    <!-- Active Channel Inspector -->
    <div class="sidebar-section highlight">
      <div class="section-header">
        <h3>Channel {selectedChannel + 1} Inspector</h3>
        <select class="channel-picker" bind:value={selectedChannel}>
          {#each Array(8) as _, i}
            <option value={i}>CH {i+1}</option>
          {/each}
        </select>
      </div>

      <div class="control-row">
        <label for="ch-state">Channel State</label>
        <select id="ch-state" bind:value={selectedChObj.state}>
          <option value="active">Active (Bound & present)</option>
          <option value="inactive">Inactive (Bound but offline)</option>
          <option value="unbound">Unbound (Empty slot)</option>
        </select>
      </div>

      {#if selectedChObj.state !== 'unbound'}
        <div class="control-row">
          <label for="ch-name">Stream Name</label>
          <input id="ch-name" type="text" bind:value={selectedChObj.name} />
        </div>

        <div class="control-row">
          <label for="ch-app">App / Node Name</label>
          <input id="ch-app" type="text" bind:value={selectedChObj.appName} />
        </div>

        <div class="control-row">
          <label for="ch-media">Media Title (Optional)</label>
          <input id="ch-media" type="text" bind:value={selectedChObj.mediaName} />
        </div>
      {/if}

      <div class="control-row">
        <div class="slider-header">
          <label for="vol-range">Fader / Volume</label>
          <span>{Math.round(selectedChObj.vol * 100)}%</span>
        </div>
        <input id="vol-range" type="range" min="0" max="1" step="0.01" bind:value={selectedChObj.vol} on:input={() => selectedChObj.faderPos = selectedChObj.vol} />
      </div>

      {#if !selectedChObj.synced}
        <div class="control-row">
          <div class="slider-header">
            <label for="fader-pos">Physical Fader Pos</label>
            <span>{Math.round(selectedChObj.faderPos * 100)}%</span>
          </div>
          <input id="fader-pos" type="range" min="0" max="1" step="0.01" bind:value={selectedChObj.faderPos} />
        </div>
      {/if}

      <div class="control-row inline">
        <label>
          <input type="checkbox" bind:checked={selectedChObj.synced} />
          Fader Synced (Pickup Mode)
        </label>
      </div>

      <div class="control-row">
        <div class="slider-header">
          <label for="knob-range">Knob Position</label>
          <span>{Math.round(selectedChObj.knob / 127 * 100)}% ({selectedChObj.knob})</span>
        </div>
        <input id="knob-range" type="range" min="0" max="127" step="1" bind:value={selectedChObj.knob} />
      </div>

      <div class="control-row inline checkbox-list">
        <label><input type="checkbox" bind:checked={selectedChObj.mute} on:change={updateSoloMutes} /> Mute</label>
        <label><input type="checkbox" bind:checked={selectedChObj.solo} on:change={updateSoloMutes} /> Solo</label>
        <label><input type="checkbox" bind:checked={selectedChObj.rec} /> Rec</label>
        <label><input type="checkbox" bind:checked={selectedChObj.stop} /> Stop</label>
      </div>

      <div class="split-toggle-box">
        <label class="split-label">
          <input type="checkbox" bind:checked={selectedChObj.isSplit} />
          Split Strip (Knob & Fader separate)
        </label>
        
        {#if selectedChObj.isSplit}
          <div class="split-fields">
            <div class="control-row">
              <label for="knob-lbl">Knob Label</label>
              <input id="knob-lbl" type="text" bind:value={selectedChObj.knobLabel} placeholder="Game audio..." />
            </div>
            <div class="control-row">
              <label for="knob-t">Knob Type</label>
              <select id="knob-t" bind:value={selectedChObj.knobType}>
                <option value="playback">playback (source)</option>
                <option value="input">input (mic)</option>
                <option value="output">output (sink)</option>
              </select>
            </div>
            <div class="control-row">
              <label for="fader-lbl">Fader Label</label>
              <input id="fader-lbl" type="text" bind:value={selectedChObj.faderLabel} placeholder="System volume..." />
            </div>
            <div class="control-row">
              <label for="fader-t">Fader Type</label>
              <select id="fader-t" bind:value={selectedChObj.faderType}>
                <option value="output">output (sink)</option>
                <option value="playback">playback (source)</option>
                <option value="input">input (mic)</option>
              </select>
            </div>
          </div>
        {/if}
      </div>

      <div class="crossfader-box">
        <h4>Crossfader (Mock)</h4>
        <div class="control-row inline">
          <label>A: <input type="text" bind:value={selectedChObj.crossSinkAName} placeholder="e.g. Mic" /></label>
          <label>B: <input type="text" bind:value={selectedChObj.crossSinkBName} placeholder="e.g. Speakers" /></label>
        </div>
      </div>
    </div>

    <!-- Keyboard info -->
    <div class="keyboard-cheatsheet">
      <h4>Keyboard controls</h4>
      <p class="hint">Click inside the TUI screen, then use:</p>
      <ul>
        <li><code>←</code> <code>→</code> Switch active channel</li>
        <li><code>↑</code> <code>↓</code> Cycle parameter focus / navigate list</li>
        <li><code>Enter</code> Confirm stream bind / open list</li>
        <li><code>Esc</code> Cancel panel view</li>
        <li><code>U</code> Unbind selected channel</li>
        <li><code>R</code> Reload config</li>
        <li><code>Q</code> Disconnect / Connect MIDI</li>
      </ul>
    </div>
  </aside>

  <!-- Monospace TUI Screen Rendering -->
  <main class="terminal-view-panel">
    <div class="terminal-instruction">
      {#if terminalFocused}
        <span class="focus-indicator focused">● KEYBOARD CONTROL ACTIVE</span>
      {:else}
        <span class="focus-indicator click-me">▲ CLICK TUI SCREEN FOR INTERACTIVE KEYBOARD</span>
      {/if}
    </div>

    <div 
      class="terminal-window" 
      class:focused={terminalFocused}
      on:click={focusTerminal}
      role="button"
      tabindex="0"
    >
      <!-- macOS-style Window Buttons -->
      <div class="window-bar">
        <div class="dot red"></div>
        <div class="dot yellow"></div>
        <div class="dot green"></div>
        <span class="title">smc-mixer (tui.svelte sandbox)</span>
        <div class="filler"></div>
      </div>

      <div class="terminal-screen-content">
        <!-- 8 channel strips horizontally aligned -->
        <div class="mixer-layout-strips">
          {#each channels as ch}
            <div 
              class="tui-strip"
              class:selected={selectedChannel === ch.id}
              class:split-mode={ch.isSplit}
              style="border-color: {getStripBorderColor(ch)}; color: {getStripTextColor(ch)};"
              on:click|stopPropagation={() => selectedChannel = ch.id}
            >
              {#if ch.isSplit}
                <!-- SPLIT STRIP LAYOUT -->
                <!-- Knob Zone -->
                <div class="tui-line header-row text-{ch.knobType || 'dim'}">
                  K{ch.id + 1} · {ch.knobType || '---'}
                </div>
                <div class="tui-line name-row bold">
                  {truncate(ch.knobLabel || '---', 12)}
                </div>
                <div class="tui-line sub-row">
                  {#if ch.crossSinkAName && ch.crossSinkBName}
                    {truncate(crossfaderLabel(ch.crossSinkAName, ch.crossSinkBName), 12)}
                  {:else}
                    ○{knobPct(ch.knob).toString().padStart(3, ' ')}%{faderBar(ch.knob / 127.0, 7)}
                  {/if}
                </div>
                {#if ch.crossSinkAName && ch.crossSinkBName}
                  <div class="tui-line bar-line text-accent">
                    {crossfadeBar(ch.knob, 12)}
                  </div>
                {/if}

                <!-- Split Divider -->
                <div class="tui-split-divider"></div>

                <!-- Fader Zone -->
                <div class="tui-line header-row text-{ch.faderType || 'dim'}">
                  F{ch.id + 1} · {ch.faderType || '---'}
                </div>
                <div class="tui-line name-row bold">
                  {truncate(ch.faderLabel || '---', 12)}
                </div>
                <div class="tui-line sub-row">&nbsp;</div>

                <!-- 5 Fader rows (splitFaderH = 5) -->
                {#each Array(5) as _, i}
                  <div class="tui-line fader-row">
                    <span 
                      class="fader-indicator clickable" 
                      title="Set fader to {Math.round((4-i)/4 * 100)}%"
                      on:click|stopPropagation={() => setVolume(ch.id, (4 - i) / 4)}
                    >
                      {getFaderRowChars(ch.vol, i, 5)}
                    </span>
                    <span class="btn-cell">
                      {#if i === 0}
                        <button 
                          class="tui-btn-widget" 
                          class:active={ch.mute || ch.soloMuted}
                          class:focused={selectedChannel === ch.id && !bindMode && navSetting === 1}
                          class:solo-muted={ch.soloMuted}
                          on:click|stopPropagation={() => toggleMute(ch.id)}
                        >
                          [M]
                        </button>
                      {:else if i === 1}
                        <button 
                          class="tui-btn-widget solo-btn" 
                          class:active={ch.solo}
                          class:focused={selectedChannel === ch.id && !bindMode && navSetting === 2}
                          on:click|stopPropagation={() => toggleSolo(ch.id)}
                        >
                          [S]
                        </button>
                      {:else if i === 2}
                        <button 
                          class="tui-btn-widget rec-btn" 
                          class:active={ch.rec}
                          on:click|stopPropagation={() => ch.rec = !ch.rec}
                        >
                          [R]
                        </button>
                      {:else if i === 3}
                        <button 
                          class="tui-btn-widget stop-btn" 
                          class:active={ch.stop}
                          on:click|stopPropagation={() => ch.stop = !ch.stop}
                        >
                          [■]
                        </button>
                      {:else if i === 4}
                        <span class="tui-pickup-txt" class:arrow={!ch.synced}>
                          {pickupLabel(ch)}
                        </span>
                      {/if}
                    </span>
                  </div>
                {/each}

              {:else}
                <!-- UNIFIED STRIP LAYOUT -->
                <div class="tui-line header-row text-{ch.kind}">
                  {getUnifiedHeader(ch)}
                </div>
                <div class="tui-line name-row bold" class:focused-nav={selectedChannel === ch.id && !bindMode && navSetting === 0}>
                  {getUnifiedName(ch)}
                </div>
                <div class="tui-line sub-row text-dim">
                  {getUnifiedSubtitle(ch)}
                </div>

                <div class="tui-line val-line">
                  {getUnifiedKnobLine(ch)}
                </div>
                <!-- svelte-ignore a11y-click-events-have-key-events -->
                <div 
                  class="tui-line bar-line clickable text-accent" 
                  title="Click to adjust Knob value"
                  on:click|stopPropagation={(e) => handleKnobClick(e, ch.id)}
                >
                  {getUnifiedKnobBar(ch)}
                </div>
                
                <div class="tui-line spacer-line">&nbsp;</div>

                <!-- 7 Fader rows (unifiedFaderH = 7) -->
                {#each Array(7) as _, i}
                  <div class="tui-line fader-row">
                    <span 
                      class="fader-indicator clickable" 
                      title="Set fader to {Math.round((6-i)/6 * 100)}%"
                      on:click|stopPropagation={() => setVolume(ch.id, (6 - i) / 6)}
                    >
                      {getFaderRowChars(ch.vol, i, 7)}
                    </span>
                    <span class="btn-cell">
                      {#if i === 1}
                        <button 
                          class="tui-btn-widget" 
                          class:active={ch.mute || ch.soloMuted}
                          class:focused={selectedChannel === ch.id && !bindMode && navSetting === 1}
                          class:solo-muted={ch.soloMuted}
                          on:click|stopPropagation={() => toggleMute(ch.id)}
                        >
                          [M]
                        </button>
                      {:else if i === 2}
                        <button 
                          class="tui-btn-widget solo-btn" 
                          class:active={ch.solo}
                          class:focused={selectedChannel === ch.id && !bindMode && navSetting === 2}
                          on:click|stopPropagation={() => toggleSolo(ch.id)}
                        >
                          [S]
                        </button>
                      {:else if i === 3}
                        <button 
                          class="tui-btn-widget rec-btn" 
                          class:active={ch.rec}
                          on:click|stopPropagation={() => ch.rec = !ch.rec}
                        >
                          [R]
                        </button>
                      {:else if i === 4}
                        <button 
                          class="tui-btn-widget stop-btn" 
                          class:active={ch.stop}
                          on:click|stopPropagation={() => ch.stop = !ch.stop}
                        >
                          [■]
                        </button>
                      {:else if i === 6}
                        <span class="tui-pickup-txt" class:arrow={!ch.synced}>
                          {pickupLabel(ch)}
                        </span>
                      {/if}
                    </span>
                  </div>
                {/each}
              {/if}
            </div>
          {/each}
        </div>

        <!-- BOTTOM PANEL VIEWPORTS -->
        <div class="tui-bottom-panel-section">
          
          <!-- Case A: Version Mismatch Warning -->
          {#if versionMismatch}
            <div class="tui-warning-line blinking">
              ⚠ version mismatch — TUI and daemon built from different commits; run 'make reinstall'
            </div>

          <!-- Case B: MIDI Device Missing Warning -->
          {:else if !deviceConnected}
            <div class="tui-warning-line">
              ⚠ no MIDI device — waiting for SMC…   q quit
            </div>

          <!-- Case C: Bind Stream Selection List -->
          {:else if bindMode}
            <div class="tui-bind-panel">
              <div class="tui-panel-header">
                Bind CH{selectedChannel + 1}   ↑↓ navigate   enter confirm   esc cancel
              </div>
              <div class="tui-list-container">
                {#if sortedFilteredStreams.length === 0}
                  <div class="tui-list-row text-gold">(no streams available to bind)</div>
                {:else}
                  {#if bindScroll > 0}
                    <div class="tui-scroll-indicator">  ↑ {bindScroll} more</div>
                  {/if}
                  
                  {#each sortedFilteredStreams as stream, idx}
                    {#if idx >= bindScroll && idx < bindScroll + bindVisible}
                      <!-- Render kind headers when boundaries change -->
                      {#if isKindHeaderNeeded(idx)}
                        <div class="tui-kind-header text-{stream.kind}">
                          {getKindHeaderLabel(stream.kind)}
                        </div>
                      {/if}
                      
                      <div class="tui-list-row" class:highlighted={idx === bindCursor}>
                        <span class="tui-kind-tag text-{stream.kind}">{getKindTag(stream.kind)}</span>
                        <span class="tui-list-label">
                          {idx === bindCursor ? '▶' : ' '}{stream.name}
                          {#if stream.mediaName}
                            <span class="text-dim">  ·  {stream.mediaName}</span>
                          {/if}
                        </span>
                      </div>
                    {/if}
                  {/each}

                  {#if sortedFilteredStreams.length - (bindScroll + bindVisible) > 0}
                    <div class="tui-scroll-indicator">  ↓ {sortedFilteredStreams.length - (bindScroll + bindVisible)} more</div>
                  {/if}
                {/if}
              </div>
            </div>

          <!-- Case D: Navigation Stream Quick-Cycle List -->
          {:else if navStreamOpen}
            <div class="tui-bind-panel">
              <div class="tui-panel-header">
                CH{selectedChannel + 1} stream   ◀▶ cycle   ↑↓ function   enter bind list   u unbind   q quit
              </div>
              <div class="tui-list-container">
                {#if sortedFilteredStreams.length === 0}
                  <div class="tui-list-row text-dim">(no streams available)</div>
                {:else}
                  {#each sortedFilteredStreams as stream, idx}
                    <!-- Highlight currently bound stream -->
                    <div class="tui-list-row" class:highlighted={stream.id === selectedChObj.streamId}>
                      <span class="tui-kind-tag text-{stream.kind}">{getKindTag(stream.kind)}</span>
                      <span class="tui-list-label">
                        {stream.id === selectedChObj.streamId ? '▶' : ' '}{stream.name}
                        {#if stream.mediaName}
                          <span class="text-dim">  ·  {stream.mediaName}</span>
                        {/if}
                      </span>
                    </div>
                  {/each}
                {/if}
              </div>
            </div>

          <!-- Case E: Default Main Status Bar -->
          {:else}
            <div class="tui-status-bar">
              <span class="text-dim">page: {activePage.padEnd(12, ' ')}   ←→ channel   ↑↓ </span>
              <span class="nav-tag" class:focused={navSetting === 0}>stream</span>
              <span class="text-dim">/</span>
              <span class="nav-tag" class:focused={navSetting === 1}>mute</span>
              <span class="text-dim">/</span>
              <span class="nav-tag" class:focused={navSetting === 2}>solo</span>
              <span class="text-dim">   enter bind   u unbind   r reload({cfgReloads})   q quit</span>
            </div>
          {/if}
        </div>
      </div>
    </div>
  </main>
</div>

<style>
  /* --- BASE STYLE RESET AND MODERN DARK LAYOUT --- */
  :global(body) {
    margin: 0;
    font-family: 'Outfit', 'Inter', -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Helvetica, Arial, sans-serif;
    background-color: #0b0f19;
    color: #f3f4f6;
  }

  .sandbox-container {
    display: flex;
    min-height: 100vh;
    box-sizing: border-box;
  }

  /* --- SIDEBAR PANEL (CONTROLS) --- */
  .sidebar-panel {
    width: 350px;
    background-color: #0e1626;
    border-right: 1px solid #1f293d;
    padding: 1.5rem;
    box-sizing: border-box;
    display: flex;
    flex-direction: column;
    gap: 1.5rem;
    overflow-y: auto;
    max-height: 100vh;
  }

  .sidebar-header h2 {
    margin: 0.5rem 0 0.25rem 0;
    font-size: 1.5rem;
    font-weight: 700;
    letter-spacing: -0.025em;
    color: #ffffff;
  }

  .sidebar-header .desc {
    margin: 0;
    font-size: 0.825rem;
    color: #9ca3af;
    line-height: 1.4;
  }

  .badge {
    display: inline-block;
    background: linear-gradient(135deg, #38bdf8 0%, #3b82f6 100%);
    color: #ffffff;
    font-size: 0.65rem;
    font-weight: 800;
    padding: 0.15rem 0.5rem;
    border-radius: 9999px;
    letter-spacing: 0.05em;
  }

  .sidebar-section {
    background-color: #172033;
    border-radius: 8px;
    padding: 1rem;
    border: 1px solid #24314c;
  }

  .sidebar-section.highlight {
    border-color: #3b82f6;
    box-shadow: 0 0 12px rgba(59, 130, 246, 0.1);
  }

  .sidebar-section h3 {
    margin: 0 0 0.75rem 0;
    font-size: 0.9rem;
    text-transform: uppercase;
    letter-spacing: 0.05em;
    color: #38bdf8;
  }

  .section-header {
    display: flex;
    justify-content: space-between;
    align-items: center;
    margin-bottom: 0.75rem;
  }

  .section-header h3 {
    margin-bottom: 0;
  }

  .channel-picker {
    background-color: #0e1626;
    border: 1px solid #3b82f6;
    color: #fff;
    font-size: 0.8rem;
    border-radius: 4px;
    padding: 0.1rem 0.4rem;
    outline: none;
    cursor: pointer;
  }

  .presets-grid {
    display: grid;
    grid-template-columns: 1fr 1fr;
    gap: 0.5rem;
  }

  .preset-btn {
    background-color: #1f293d;
    border: 1px solid #2e3c56;
    color: #e5e7eb;
    font-size: 0.75rem;
    padding: 0.4rem 0.5rem;
    border-radius: 4px;
    cursor: pointer;
    text-align: left;
    transition: all 0.2s ease;
  }

  .preset-btn:hover {
    background-color: #3b82f6;
    color: #fff;
    border-color: #3b82f6;
  }

  .control-row {
    margin-bottom: 0.75rem;
    display: flex;
    flex-direction: column;
    gap: 0.25rem;
  }

  .control-row.inline {
    flex-direction: row;
    flex-wrap: wrap;
    gap: 1rem;
    margin-top: 0.5rem;
  }

  .control-row label {
    font-size: 0.75rem;
    color: #9ca3af;
  }

  .control-row input[type="text"],
  .control-row select {
    background-color: #0e1626;
    border: 1px solid #2e3c56;
    border-radius: 4px;
    color: #fff;
    padding: 0.4rem;
    font-size: 0.825rem;
    outline: none;
    width: 100%;
    box-sizing: border-box;
  }

  .control-row input[type="text"]:focus,
  .control-row select:focus {
    border-color: #38bdf8;
  }

  .control-row.inline label {
    display: flex;
    align-items: center;
    gap: 0.4rem;
    color: #fff;
    font-size: 0.8rem;
    cursor: pointer;
  }

  .checkbox-list {
    background-color: #0e1626;
    padding: 0.5rem;
    border-radius: 4px;
    border: 1px solid #2e3c56;
  }

  .slider-header {
    display: flex;
    justify-content: space-between;
    font-size: 0.75rem;
  }

  .slider-header span {
    font-family: monospace;
    color: #38bdf8;
  }

  .control-row input[type="range"] {
    width: 100%;
    accent-color: #38bdf8;
  }

  .split-toggle-box {
    margin-top: 0.75rem;
    background-color: #0e1626;
    border: 1px solid #2e3c56;
    border-radius: 4px;
    padding: 0.5rem;
  }

  .split-label {
    display: flex;
    align-items: center;
    gap: 0.4rem;
    font-size: 0.8rem;
    cursor: pointer;
    font-weight: 500;
  }

  .split-fields {
    margin-top: 0.5rem;
    display: flex;
    flex-direction: column;
    gap: 0.5rem;
    border-top: 1px solid #2e3c56;
    padding-top: 0.5rem;
  }

  .crossfader-box {
    margin-top: 0.75rem;
    border-top: 1px solid #2e3c56;
    padding-top: 0.5rem;
  }

  .crossfader-box h4 {
    margin: 0 0 0.25rem 0;
    font-size: 0.75rem;
    color: #9ca3af;
    text-transform: uppercase;
  }

  .keyboard-cheatsheet {
    font-size: 0.75rem;
    background-color: #080d19;
    border-radius: 6px;
    padding: 0.75rem;
    border: 1px solid #182235;
  }

  .keyboard-cheatsheet h4 {
    margin: 0 0 0.25rem 0;
    color: #e5e7eb;
    font-size: 0.8rem;
  }

  .keyboard-cheatsheet .hint {
    margin: 0 0 0.5rem 0;
    color: #9ca3af;
  }

  .keyboard-cheatsheet ul {
    margin: 0;
    padding-left: 1rem;
    display: flex;
    flex-direction: column;
    gap: 0.25rem;
  }

  .keyboard-cheatsheet code {
    background-color: #1a2233;
    padding: 0.05rem 0.25rem;
    border-radius: 2px;
    color: #38bdf8;
    border: 1px solid #2d384e;
  }

  /* --- TERMINAL DISPLAY AREA --- */
  .terminal-view-panel {
    flex-grow: 1;
    background-color: #070a13;
    padding: 2rem;
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: flex-start;
    overflow-x: auto;
    box-sizing: border-box;
  }

  .terminal-instruction {
    margin-bottom: 1rem;
    height: 1.5rem;
  }

  .focus-indicator {
    font-size: 0.75rem;
    font-weight: bold;
    padding: 0.25rem 0.75rem;
    border-radius: 9999px;
    letter-spacing: 0.05em;
  }

  .focus-indicator.focused {
    background-color: rgba(39, 201, 63, 0.1);
    color: #27c93f;
    border: 1px solid #27c93f;
    animation: pulse 2s infinite;
  }

  .focus-indicator.click-me {
    background-color: rgba(239, 68, 68, 0.1);
    color: #ef4444;
    border: 1px solid #ef4444;
  }

  @keyframes pulse {
    0% { box-shadow: 0 0 0 0 rgba(39, 201, 63, 0.4); }
    70% { box-shadow: 0 0 0 6px rgba(39, 201, 63, 0); }
    100% { box-shadow: 0 0 0 0 rgba(39, 201, 63, 0); }
  }

  /* --- TERMINAL WINDOW EMULATOR --- */
  .terminal-window {
    background-color: #12131a;
    border: 1.5px solid #222530;
    border-radius: 8px;
    box-shadow: 0 20px 40px rgba(0, 0, 0, 0.6);
    display: flex;
    flex-direction: column;
    width: 1080px; /* Exact size matching horizontal join width roughly */
    min-height: 480px;
    outline: none;
    transition: border-color 0.2s, box-shadow 0.2s;
  }

  .terminal-window.focused {
    border-color: #3b82f6;
    box-shadow: 0 0 20px rgba(59, 130, 246, 0.25), 0 20px 40px rgba(0, 0, 0, 0.7);
  }

  .window-bar {
    background-color: #1b1c24;
    height: 32px;
    border-bottom: 1.5px solid #222530;
    display: flex;
    align-items: center;
    padding: 0 10px;
    border-radius: 8px 8px 0 0;
    user-select: none;
  }

  .window-bar .dot {
    width: 11px;
    height: 11px;
    border-radius: 50%;
    margin-right: 6px;
  }

  .window-bar .dot.red { background-color: #ff5f56; }
  .window-bar .dot.yellow { background-color: #ffbd2e; }
  .window-bar .dot.green { background-color: #27c93f; }

  .window-bar .title {
    color: #62657a;
    font-size: 0.75rem;
    margin-left: 15px;
    font-family: monospace;
  }

  .window-bar .filler {
    flex-grow: 1;
  }

  .terminal-screen-content {
    padding: 1rem;
    font-family: 'JetBrains Mono', 'Fira Code', 'Courier New', Courier, monospace;
    font-size: 13.5px;
    line-height: 1.25;
    background-color: #12131a;
    display: flex;
    flex-direction: column;
    flex-grow: 1;
    overflow-x: auto;
  }

  /* --- MIXER GRID --- */
  .mixer-layout-strips {
    display: flex;
    flex-direction: row;
    gap: 0.5rem;
    margin-bottom: 1rem;
  }

  /* Individual strip mimics lipgloss border style */
  .tui-strip {
    border: 2px solid #2d2d2d;
    border-radius: 6px;
    padding: 0px 8px;
    width: 122px; /* pads+inner content width matches 12 chars + padding */
    min-width: 122px;
    box-sizing: border-box;
    background-color: #12131a;
    transition: all 0.15s ease-in-out;
    cursor: pointer;
    user-select: none;
    display: flex;
    flex-direction: column;
  }

  .tui-strip.selected {
    box-shadow: 0 0 12px rgba(59, 130, 246, 0.15);
  }

  .tui-line {
    white-space: pre;
    height: 1.25em;
    overflow: hidden;
  }

  .tui-line.header-row {
    font-size: 0.8rem;
    margin-top: 2px;
  }

  .tui-line.name-row {
    color: #ffffff;
  }

  .tui-line.sub-row {
    font-size: 0.75rem;
  }

  .bold {
    font-weight: bold;
  }

  .text-mic { color: #FF4444; }
  .text-sink { color: #4488FF; }
  .text-source { color: #44FF88; }
  .text-playback { color: #44FF88; }
  .text-input { color: #FF4444; }
  .text-output { color: #4488FF; }
  .text-dim { color: #585858; }
  .text-accent { color: #5f87ff; }
  .text-gold { color: #ffff00; }

  /* Nav focus visual effect for stream name */
  .focused-nav {
    color: #ffff00 !important;
  }

  .tui-split-divider {
    border-bottom: 1px solid #585858;
    margin: 4px -8px; /* bleed back to border */
  }

  .fader-row {
    display: flex;
    justify-content: space-between;
    align-items: center;
  }

  .fader-indicator {
    letter-spacing: -1px;
    color: #585858;
  }

  .fader-indicator.clickable:hover {
    color: #e5e7eb;
  }

  /* Widgets */
  .btn-cell {
    display: flex;
    width: 32px;
    justify-content: flex-end;
  }

  .tui-btn-widget {
    background: none;
    border: none;
    font-family: inherit;
    font-size: inherit;
    padding: 0px 2px;
    margin: 0;
    cursor: pointer;
    color: #585858;
    border-radius: 2px;
    font-weight: bold;
    user-select: none;
  }

  .tui-btn-widget.active {
    background-color: #ffaf00; /* colorWarn */
    color: #ffffff;
  }

  .tui-btn-widget.solo-btn.active {
    background-color: #ffff00; /* colorGold */
    color: #000000;
  }

  .tui-btn-widget.rec-btn.active {
    background-color: #ff0000; /* colorHot */
    color: #ffffff;
  }

  .tui-btn-widget.stop-btn.active {
    background-color: #5f87ff; /* colorAccent */
    color: #ffffff;
  }

  .tui-btn-widget.focused {
    color: #ffff00;
    border: 1px dashed #ffff00;
  }

  .tui-pickup-txt {
    color: #d4d4d4;
    font-size: 0.8rem;
    text-align: right;
  }

  .tui-pickup-txt.arrow {
    color: #ffaf00;
    font-weight: bold;
    animation: flash 1s infinite alternate;
  }

  @keyframes flash {
    0% { opacity: 0.3; }
    100% { opacity: 1; }
  }

  /* --- BOTTOM PANEL RENDERING --- */
  .tui-bottom-panel-section {
    border-top: 1px dashed #242735;
    padding-top: 0.75rem;
    margin-top: auto;
    min-height: 120px;
    display: flex;
    flex-direction: column;
    justify-content: flex-start;
  }

  .tui-status-bar {
    white-space: pre;
    color: #585858;
  }

  .tui-warning-line {
    color: #ff3333;
    font-weight: bold;
    white-space: pre;
  }

  .blinking {
    animation: warningBlink 1s infinite;
  }

  @keyframes warningBlink {
    0%, 49% { opacity: 1; }
    50%, 100% { opacity: 0.3; }
  }

  .nav-tag {
    color: #585858;
  }

  .nav-tag.focused {
    color: #ffff00;
    font-weight: bold;
  }

  /* Bind panel sub-layout */
  .tui-bind-panel {
    display: flex;
    flex-direction: column;
    gap: 2px;
  }

  .tui-panel-header {
    background-color: #ffff00;
    color: #000000;
    font-weight: bold;
    padding: 0px 4px;
    white-space: pre;
  }

  .tui-list-container {
    display: flex;
    flex-direction: column;
    padding: 2px 4px;
  }

  .tui-scroll-indicator {
    color: #585858;
    white-space: pre;
  }

  .tui-kind-header {
    font-size: 0.8rem;
    font-weight: bold;
    opacity: 0.6;
    margin: 2px 0 1px 0;
    white-space: pre;
  }

  .tui-list-row {
    display: flex;
    height: 1.2em;
    align-items: center;
    color: #d4d4d4;
    white-space: pre;
  }

  .tui-list-row.highlighted {
    color: #ffff00;
    font-weight: bold;
  }

  .tui-kind-tag {
    font-weight: bold;
    margin-right: 6px;
  }

  .tui-list-label {
    flex-grow: 1;
  }
</style>
