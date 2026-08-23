import AppIntents
import ActivityKit

struct ToggleVPNIndicatorIntent: AppIntent {

    static let title: LocalizedStringResource =
        "Toggle VPN Indicator"

    static let description =
        IntentDescription(
            "Creates VPN Live Activity directly from App Intent."
        )

    func perform() async throws -> some IntentResult {

        let existingActivities =
            Activity<VPNAttributes>.activities

        if !existingActivities.isEmpty {

            for activity in existingActivities {

                await activity.end(
                    nil,
                    dismissalPolicy: .immediate
                )
            }

            return .result()
        }

        let attributes =
            VPNAttributes(
                title: "VPN"
            )

        let state =
            VPNAttributes.ContentState(
                isVisible: true
            )

        let content =
            ActivityContent(
                state: state,
                staleDate: nil
            )

        _ = try Activity<VPNAttributes>.request(
            attributes: attributes,
            content: content,
            pushType: nil
        )

        return .result()
    }
}
