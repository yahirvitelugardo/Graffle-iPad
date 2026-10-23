import SwiftUI

/// Who made Graffle, and under what license it is released.
struct AboutView: View {
    @Environment(\.dismiss) private var dismiss

    private var version: String { (Bundle.main.object(forInfoDictionaryKey: "CFBundleShortVersionString") as? String) ?? "0.1" }
    private var build: String { (Bundle.main.object(forInfoDictionaryKey: "CFBundleVersion") as? String) ?? "1" }

    var body: some View {
        NavigationStack {
            VStack(spacing: 14) {
                Image(systemName: "point.3.connected.trianglepath.dotted")
                    .font(.system(size: 56))
                    .foregroundStyle(Color(Tok.accent))
                Text("Graffle").font(.largeTitle.bold())
                Text("Version \(version) (\(build))").font(.footnote).foregroundStyle(.secondary)
                Text("Graffle is an app for diagrams and vector drawing, designed and developed by **EVM**. All credit for this app goes to **EVM**.")
                    .multilineTextAlignment(.center)
                Link("evm.mx", destination: URL(string: "https://evm.mx")!).fontWeight(.semibold)
                Text("Open Source software, released under the MIT License.").font(.callout.weight(.medium))
                Link("Source code on GitHub", destination: URL(string: "https://github.com/yahirvitelugardo/Graffle-iPad")!)
                Text("Copyright © 2026 EVM. Released under the MIT License.").font(.footnote).foregroundStyle(.secondary)
            }
            .padding(28)
            .frame(maxWidth: 460)
            .toolbar { ToolbarItem(placement: .confirmationAction) { Button("Done") { dismiss() } } }
            .navigationBarTitleDisplayMode(.inline)
        }
        .presentationDetents([.medium])
    }
}
