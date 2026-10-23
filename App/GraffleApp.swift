import SwiftUI
import UniformTypeIdentifiers

@main
struct GraffleApp: App {
    var body: some Scene {
        DocumentGroup(newDocument: GrafDocument()) { file in
            EditorView(document: file.$document, fileName: file.fileURL?.deletingPathExtension().lastPathComponent ?? "Diagram")
        }
        DocumentGroupLaunchScene(" ") {
            NewDocumentButton("New Diagram")
        } background: {
            LinearGradient(colors: [Color(red: 0.86, green: 0.93, blue: 1.0), Color(red: 0.93, green: 0.88, blue: 0.98)],
                           startPoint: .topLeading, endPoint: .bottomTrailing)
        } overlayAccessoryView: { geometry in
            let f = geometry.titleViewFrame
            ZStack {
                Image("LaunchIcon")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 210, height: 210)
                    .position(x: f.midX, y: f.minY + 118)
                Text("Graffle")
                    .font(.system(size: 88, weight: .bold))
                    .position(x: f.midX, y: f.minY + 266)
            }
        }
    }
}
