import AppIntents

struct VPNIndicatorShortcuts:
    AppShortcutsProvider {

    static var appShortcuts: [AppShortcut] {

        AppShortcut(
            intent: ToggleVPNIndicatorIntent(),
            phrases: [
                "Toggle VPN Indicator",
                "Switch VPN Indicator",
                "VPN Indicator"
            ],
            shortTitle: "VPN Indicator",
            systemImageName: "globe"
        )
    }
}
