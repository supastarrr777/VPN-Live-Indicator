import AppIntents

struct ToggleVPNIndicatorIntent: AppIntent {

    static let title: LocalizedStringResource =
        "Toggle VPN Indicator"

    static let description =
        IntentDescription(
            "Turns VPN Live Activity on or off."
        )

    func perform() async throws -> some IntentResult {

        print("=== APP INTENT EXECUTED ===")

        await VPNActivityManager.shared.toggle()

        print("=== APP INTENT FINISHED ===")

        return .result()
    }
}
