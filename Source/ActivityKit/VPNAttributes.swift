import ActivityKit

struct VPNAttributes: ActivityAttributes {

    public struct ContentState: Codable, Hashable {

        var isVisible: Bool
    }

    var title: String
}
