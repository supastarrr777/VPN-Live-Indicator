import ActivityKit
import Foundation

@MainActor
final class VPNActivityManager {

    static let shared = VPNActivityManager()

    private init() {}

    func start() async {

        guard ActivityAuthorizationInfo().areActivitiesEnabled else {
            print("Live Activities are disabled")
            return
        }

        // Не создаём второй индикатор, если один уже работает
        guard Activity<VPNAttributes>.activities.isEmpty else {
            return
        }

        let attributes = VPNAttributes(title: "VPN")

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
            print("Live Activity error: \(error.localizedDescription)")
        }
    }

    func stop() async {

        // Завершаем все индикаторы, включая созданные до перезапуска приложения
        for activity in Activity<VPNAttributes>.activities {
            await activity.end(
                nil,
                dismissalPolicy: .immediate
            )
        }
    }
}
