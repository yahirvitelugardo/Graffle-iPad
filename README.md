# Graffle for iPad

Diagramming app for iPad (SwiftUI shell + a UIKit canvas), the companion of [Graffle for Mac](https://github.com/yahirvitelugardo/Graffle). It opens and saves the same `.graf` files.

- Touch, Apple Pencil, trackpad and keyboard; inspector, layers, shape library, themes, templates.
- Importers: SVG, STL, Xcode/.NET/Gradle architecture, class diagrams, SQLite/SQL → ER. Code generation. PNG/PDF/SVG export.
- Server databases and Swift-package manifests need a Mac.

`Core/` holds the model, render, theme, importer and code-generation sources copied from the Mac app (with `#if canImport(AppKit)` gates); `Shim/` adapts AppKit names to UIKit.

```bash
brew install xcodegen
xcodegen generate
open GraffleiPad.xcodeproj
```

MIT licensed.
