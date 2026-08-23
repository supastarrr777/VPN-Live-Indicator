static var appShortcuts: [AppShortcut] {
    AppShortcut(
        intent: ToggleVPNIndicatorIntent(),
        phrases: [
            "Toggle VPN Indicator in ${applicationName}",
            "Switch VPN Indicator in ${applicationName}",
            "VPN Indicator in ${applicationName}"
        ],
        shortTitle: "VPN Indicator",
        systemImageName: "globe"
    )
}
