import AppIntents
import UserNotifications

struct ToggleVPNIndicatorIntent: AppIntent {

    static let title: LocalizedStringResource =
        "Toggle VPN Indicator"

    static let description =
        IntentDescription(
            "Tests whether App Intent is actually executed."
        )

    func perform() async throws -> some IntentResult {

        let center =
            UNUserNotificationCenter.current()

        let content =
            UNMutableNotificationContent()

        content.title =
            "VPN Indicator"

        content.body =
            "AppIntent executed successfully"

        content.sound =
            .default

        let request =
            UNNotificationRequest(
                identifier: UUID().uuidString,
                content: content,
                trigger: nil
            )

        try await center.add(request)

        return .result()
    }
}
