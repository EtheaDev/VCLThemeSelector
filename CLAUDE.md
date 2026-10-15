# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Repository overview

VCLThemeSelector is a Delphi VCL library (Apache 2.0) by Ethea S.r.l. that adds a theme picker form to a VCL app, plus a "ModernAppDemo" High-DPI showcase. It supports **Delphi XE5 through Delphi 13** — there is no single "current" project file; each supported Delphi version has its own `.dpr`/`.dproj` under `Demo/Projects/D*/`.

The repo is **not** a git working copy on disk — `.svn/` indicates it is checked out from Subversion. There is no package manager, no build script, and no automated test suite. Builds are done from the Delphi IDE (or msbuild against the per-version `.dproj`).

## Build & run

- Open the `.dpr` matching your Delphi version, e.g.:
  - `Demo/Projects/D13/VCLThemeSelectorLauncher.dpr` — minimal demo that just hosts the selector
  - `Demo/Projects/D13/ModernAppDemo.dpr` — full High-DPI themed app demo
  - Older variants live under `D12/`, `D11/`, `D10_4/`, `D10_3/`, `D10_2/`, `D10_1/`, `DXE8/`, `DXE6/`, `DXE3/`
- Prebuilt `Demo/Bin/VCLThemeSelectorLauncher.exe` and `Demo/Bin/ModernAppDemo.exe` are checked in for quick smoke-testing without building.
- `TestFontDPI/TestFontDPI.dpr` is a tiny separate project for verifying per-monitor DPI font behavior.
- There are no unit tests; the only "tests" are visual — run a demo and confirm theme selection / DPI scaling behave as expected.

### Required external components for ModernAppDemo

ModernAppDemo will not compile out of the box. Before building it you must install (via GetIt or by downloading and adding to library path):

- IconFontsImageList — https://github.com/EtheaDev/IconFontsImageList
- SVGIconImageList   — https://github.com/EtheaDev/SVGIconImageList
- Optional: StyledComponents (https://github.com/EtheaDev/StyledComponents/) — only when compiling with the `STYLEDCOMPONENTS` define
- Optional: VCLStyleUtils + DDetours — only when compiling with the `VCLSTYLEUTILS` define. A vendored copy is in `Ext/VCLStyleUtils/` for convenience.

The plain `VCLThemeSelectorLauncher` demo only depends on the units in `Source/` and has no external requirements.

## Architecture

### `Source/` — the redistributable library (3 units)

This is the surface that consumers add to their own apps. Everything else in the repo is demo / scaffolding.

- **`FVCLThemeSelector.pas`** — the selector form `TVCLThemeSelectorForm` and the public API. The entry point is `ShowVCLThemeSelector(var AStyleName; AExcludeWindows; AMaxRows; AMaxColumns): Boolean`. The form lays out one preview tile per registered VCL Style, splits them into Light/Dark scroll boxes (`LeftScrollBox` / `RightScrollBox`), and writes the chosen style name back through the `var` parameter. Also exposes registry helpers (`ReadAppStyleFromReg` / `WriteAppStyleToReg` / `…AndFontFromReg/ToReg`) and edit-control colorers (`SetEditorStyleAttributes` / `SetRequiredEditStyleAttributes`).
- **`CBVCLStylePreview.pas`** — `TCBVclStylesPreview`, a custom `TCustomControl` that paints a thumbnail of a VCL Style (menu, buttons, edits, tab control, scrollbar) directly onto a canvas using `TCustomStyleServices`. Used as the preview tile **before Delphi 10.4**, where per-control styles aren't available.
- **`CBVCLStylePreviewForm.pas`** + `.dfm` — `TCBVCLPreviewForm`, an actual hidden form populated with real VCL controls, then snapshot-rendered into the tile. Used **from Delphi 10.4 onward**, where `PerControlStyles` lets each preview render in its own style without affecting the rest of the app. The selection between the two preview strategies is done in `FVCLThemeSelector.pas` via `{$IF CompilerVersion > 33}`.

### Theme registration model

`FVCLThemeSelector.pas` keeps a global `TList<TThemeAttribute>` populated by `InitDefaultThemesAttributes` in its `initialization` section. Each entry is `(StyleName, ThemeType=ttLight|ttDark, EditRequiredColor, EditReadonlyColor)`. To add a custom/third-party VCL Style:

```pascal
RegisterThemeAttributes('MyCustomStyle', ttDark, clWebDarkBlue, clWebDarkGray);
```

`GetStyleAttributes` raises if a style is queried but not registered, so any style the app actually loads must be registered before the selector is shown. The `LauncherForm.pas` `initialization` block shows the canonical pattern.

### `Source/VCLThemeSelector.inc`

Single include file translating Delphi's `VER310`..`VER370` predefined symbols into ascending `D10_1+`, `D10_2+`, … `D13+` defines. Every `.pas` that needs version conditionals does `{$Include VCLThemeSelector.inc}` (or `{$I ..\..\Source\VCLThemeSelector.inc}` from demo sources) and then branches on those `D*+` flags. **When adding a new Delphi version, add its `VERxxx` mapping here first** — the rest of the codebase keys off these defines.

### Other conditional-compilation flags

- `LANGUAGE_ITA` — switches all resourcestrings (selector caption, button labels, preview labels) from English to Italian. Set in project options, not in source.
- `STYLEDCOMPONENTS` — pulls in EtheaDev StyledComponents in the demo and registers rounded button rendering.
- `VCLSTYLEUTILS` — enables RRUZ vcl-styles-utils hooks in the demo (system controls, screen tips, form hooks). Vendored under `Ext/VCLStyleUtils/`.

### `Demo/` layout

- `Demo/Source/` — shared `.pas`/`.dfm` for both demos. `LauncherForm.*` is the simple launcher; `uSplitView.*` is the ModernAppDemo main form (TSplitView-based, originally derived from Embarcadero's TSplitView demo); `EditForm`, `DemoAbout`, `DImageCollections` are supporting forms.
- `Demo/Projects/D{XE3,XE6,XE8,10_1..10_4,11,12,13}/` — only `.dpr` / `.dproj` / `.res` per version. They all reference the **same** sources in `Demo/Source/` and `Source/` via relative paths, so a code change in `Demo/Source/uSplitView.pas` must keep compiling under every supported Delphi version (mind the `D*+` conditionals).
- `Demo/Data/biolife.xml` — sample dataset for the DBGrid tab. The 10.1 PNG stream format is incompatible with newer Delphi versions; use an older `biolife.xml` if testing on D10.1 (per README).

### `Ext/VCLStyleUtils/`

Vendored copy of RRUZ's vcl-styles-utils + MahdiSafsafi's DDetours. Only used when the demo is built with `VCLSTYLEUTILS` defined. Treat as third-party — do not refactor.

### `TestFontDPI/`

Standalone two-form sample (`MainUnit`, `ChildUnit`) for verifying DPI font handling. Independent of the rest of the repo.

## Conventions worth knowing

- **Preview-tile rendering switches by Delphi version.** Anything that touches preview layout/sizing must be tested on at least one pre-10.4 and one 10.4+ Delphi to cover both code paths (`TCBVclStylesPreview` vs. `TCBVCLPreviewForm` snapshot).
- **DPI scaling is a first-class concern.** Constants like `PREVIEW_HEIGHT = 190` / `PREVIEW_WIDTH = 300` in `CBVCLStylePreview.pas` are explicitly "at 96 DPI" and are scaled at runtime via `ChangeScale` and `FormAfterMonitorDpiChanged`. Don't hardcode pixel sizes without applying the scale.
- **Italian and English strings are kept in lockstep** inside `{$IFDEF LANGUAGE_ITA}` blocks in `FVCLThemeSelector.pas`. Adding a new resourcestring means adding both translations.
- **The `Source/` units must stay self-contained** — they're what consumers pull into their own projects. Avoid pulling demo-only dependencies (IconFonts, SVGIcon, StyledComponents, VCLStyleUtils) into the three core units.
