import SwiftUI

struct ContentView: View {

    var body: some View {

        VStack(spacing: 30) {

            Image(systemName: "lock.fill")
                .font(.system(size: 80))
                .foregroundColor(.blue)

            Text("VPN Live Indicator")
                .font(.largeTitle)

            Button("Start Indicator") {

            }

            Button("Stop Indicator") {

            }
        }
        .padding()
    }
}
