import AppIntents

struct ToggleVPNIndicatorIntent: AppIntent {

    static var title: LocalizedStringResource =
        "Toggle VPN Indicator"

    static var description =
        IntentDescription(
            "Turns VPN Live Activity on or off."
        )

    func perform() async throws -> some IntentResult {

        await VPNActivityManager.shared.toggle()

        return .result()
    }
}
