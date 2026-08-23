import ActivityKit
import Foundation

@MainActor
final class VPNActivityManager {

    static let shared = VPNActivityManager()

    private init() {}

    func toggle() async {

        print("=== VPNActivityManager.toggle() START ===")

        guard ActivityAuthorizationInfo().areActivitiesEnabled else {

            print("=== Live Activities disabled ===")

            return
        }

        print("=== Live Activities enabled ===")

        let existingActivities =
            Activity<VPNAttributes>.activities

        print(
            "=== Existing activities count: \(existingActivities.count) ==="
        )

        if !existingActivities.isEmpty {

            print("=== Ending existing activities ===")

            for activity in existingActivities {

                await activity.end(
                    nil,
                    dismissalPolicy: .immediate
                )
            }

            print("=== Activities ended ===")

            return
        }

        print("=== Creating Live Activity ===")

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
          
