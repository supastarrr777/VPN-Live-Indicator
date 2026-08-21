import ActivityKit
import Foundation

@MainActor
final class VPNActivityManager {

    static let shared = VPNActivityManager()

    private init() {}

    func toggle() async {

        guard ActivityAuthorizationInfo().areActivitiesEnabled else {
            print("Live Activities are disabled")
            return
        }

        let existingActivities =
            Activity<VPNAttributes>.activities

        // Если уже есть Live Activity —
        // завершаем её

        if !existingActivities.isEmpty {

            for activity in existingActivities {

                await activity.end(
                    nil,
                    dismissalPolicy: .immediate
                )
            }

            return
        }

        // Иначе создаём новую

        let attributes = VPNAttributes(
            title: "VPN"
        )

        let state = VPNAttributes.ContentState(
            isVisible: true
        )

        let content = ActivityContent(
            state: state,
            staleDate: nil
        )

        do {

            _ = try Activity<VPNAttributes>.request(
                attributes: attributes,
                content: content,
                pushType: nil
            )

        } catch {

            print(
                "Live Activity error: \(error.localizedDescription)"
            )
        }
    }
}
