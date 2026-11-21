import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            VStack(spacing: 16) {
                Image(systemName: "play.rectangle.fill")
                    .font(.system(size: 56))
                Text("BAYRAKTUBE")
                    .font(.title.bold())
                Text("Filmler, diziler, kısa klipler ve müzik videoları.")
                    .font(.subheadline)
                    .foregroundStyle(.secondary)
                    .multilineTextAlignment(.center)
            }
            .padding()
            .navigationTitle("BAYRAKTUBE")
        }
    }
}

#Preview {
    ContentView()
}
