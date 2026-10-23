import SwiftUI
import UniformTypeIdentifiers

@main
struct GraffleApp: App {
    var body: some Scene {
        DocumentGroup(newDocument: GrafDocument()) { file in
            EditorView(document: file.$document, fileName: file.fileURL?.deletingPathExtension().lastPathComponent ?? "Diagram")
        }
        DocumentGroupLaunchScene("Graffle") {
            NewDocumentButton("New Diagram")
        } background: {
            LinearGradient(colors: [Color(red: 0.86, green: 0.93, blue: 1.0), Color(red: 0.93, green: 0.88, blue: 0.98)],
                           startPoint: .topLeading, endPoint: .bottomTrailing)
        } overlayAccessoryView: { geometry in
            Image("LaunchIcon")
                .resizable()
                .scaledToFit()
                .frame(width: 130, height: 130)
                .clipShape(RoundedRectangle(cornerRadius: 30, style: .continuous))
                .shadow(color: .black.opacity(0.18), radius: 14, y: 6)
                .position(x: geometry.titleViewFrame.midX, y: geometry.titleViewFrame.minY + 115)
        }
    }
}
