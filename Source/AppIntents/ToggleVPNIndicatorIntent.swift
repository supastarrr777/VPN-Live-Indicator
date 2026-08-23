import AppIntents
import Foundation

struct ToggleVPNIndicatorIntent: AppIntent {

    static let title: LocalizedStringResource =
        "Toggle VPN Indicator"

    static let description =
        IntentDescription(
            "Tests whether VPNActivityManager.toggle() is reached."
        )

    func perform() async throws -> some IntentResult {

        await VPNActivityManager.shared.toggle()

        throw NSError(
            domain: "VPNIndicator",
            code: 1,
            userInfo: [
                NSLocalizedDescriptionKey:
                    "VPNActivityManager.toggle() reached"
            ]
        )
    }
}
