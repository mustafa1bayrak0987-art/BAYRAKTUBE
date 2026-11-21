import SwiftUI

struct BayraktubeArayuz: View {
    private let kategoriler = ["Tümü", "Filmler", "Diziler", "Kısa Klipler", "Müzik Videoları"]
    @State private var seciliKategori = "Tümü"

    var body: some View {
        NavigationStack {
            VStack(alignment: .leading, spacing: 16) {
                HStack {
                    Image(systemName: "play.rectangle.fill")
                        .font(.title2)
                        .foregroundStyle(.red)
                    Text("BAYRAKTUBE")
                        .font(.title2.bold())
                        .foregroundStyle(.white)
                }
                .padding(.horizontal)

                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 10) {
                        ForEach(kategoriler, id: \.self) { kategori in
                            Button(kategori) {
                                seciliKategori = kategori
                            }
                            .padding(.horizontal, 14)
                            .padding(.vertical, 8)
                            .background(seciliKategori == kategori ? Color.red : Color.white.opacity(0.12))
                            .foregroundStyle(.white)
                            .clipShape(Capsule())
                        }
                    }
                    .padding(.horizontal)
                }

                VStack(alignment: .leading, spacing: 8) {
                    RoundedRectangle(cornerRadius: 14)
                        .fill(Color.red.gradient)
                        .frame(height: 170)
                        .overlay {
                            Image(systemName: "play.circle.fill")
                                .font(.system(size: 50))
                                .foregroundStyle(.white)
                        }

                    Text("Seçili Kategori: \(seciliKategori)")
                        .font(.headline)
                        .foregroundStyle(.white)

                    Text("Filmler, diziler, kısa klipler ve müzik videoları için arayüz hazır.")
                        .font(.subheadline)
                        .foregroundStyle(.gray)
                }
                .padding()
                .background(Color.white.opacity(0.06))
                .clipShape(RoundedRectangle(cornerRadius: 16))
                .padding(.horizontal)

                Spacer()
            }
            .padding(.top, 12)
            .background(Color.black.ignoresSafeArea())
        }
        .preferredColorScheme(.dark)
    }
}
