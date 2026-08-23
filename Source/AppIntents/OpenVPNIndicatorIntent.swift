import AppIntents

struct OpenVPNIndicatorIntent: OpenIntent {

    static let title: LocalizedStringResource =
        "Open VPN Indicator"

    func perform() async throws -> some IntentResult {
        .result()
    }
}
