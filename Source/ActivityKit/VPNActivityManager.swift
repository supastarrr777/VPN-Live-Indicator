import ActivityKit
import Foundation

final class VPNActivityManager {

    static let shared = VPNActivityManager()

    private init() {}

    var currentActivity: Activity<VPNAttributes>?

    func start() {

        let attributes = VPNAttributes(
            title: "VPN"
        )

        let state = VPNAttributes.ContentState(
            isVisible: true
        )

        do {

            currentActivity = try Activity.request(
                attributes: attributes,
                contentState: state
            )

        } catch {

            print(error.localizedDescription)
        }
    }

    func stop() {

        Task {

            await currentActivity?.end(
                nil,
                dismissalPolicy: .immediate
            )

            currentActivity = nil
        }
    }
}
