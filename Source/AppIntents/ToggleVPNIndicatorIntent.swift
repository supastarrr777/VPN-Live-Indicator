import AppIntents

struct ToggleVPNIndicatorIntent: AppIntent {

    static let title: LocalizedStringResource =
        "Toggle VPN Indicator"

    static let description =
        IntentDescription(
            "Opens VPN Indicator"
        )

    func perform() async throws -> some IntentResult {

        return .result(
            opensIntent: OpenVPNIndicatorIntent()
        )
    }
}
