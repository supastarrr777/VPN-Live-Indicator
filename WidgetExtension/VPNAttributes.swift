
import ActivityKit

struct VPNAttributes: ActivityAttributes {

    struct ContentState: Codable, Hashable {
        var isVisible: Bool
    }

    var title: String
}
