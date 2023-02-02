//
//  GameLiveActivity.swift
//  GameWidget
//
//  Created by Thomas Prezioso Jr on 1/31/23.
//

import ActivityKit
import WidgetKit
import SwiftUI

struct GameAttributes: ActivityAttributes {
    public struct ContentState: Codable, Hashable {
        // Dynamic stateful properties about your activity go here!
        var gameState: GameState
    }

    // Fixed non-changing properties about your activity go here!
    var homeTeam: String
    var awayTeam: String
}

struct GameLiveActivity: Widget {
    var body: some WidgetConfiguration {
        ActivityConfiguration(for: GameAttributes.self) { context in
            // Lock screen/banner UI goes here
            LiveActivityView()

        } dynamicIsland: { context in
            DynamicIsland {
                // Expanded UI goes here.  Compose the expanded UI through
                // various regions, like leading/trailing/center/bottom
                DynamicIslandExpandedRegion(.leading) {
                    HStack {
                        Image ("warriors")
                            .teamLogoModifier(frame: 40)
                        Text ("100")
                            .font(.title)
                            .fontWeight (.semibold)
                    }
                }
                DynamicIslandExpandedRegion(.trailing) {
                    HStack {
                        Text ("88")
                            .font(.title)
                            .fontWeight (.semibold)
                        Image ("bulls")
                            .teamLogoModifier(frame: 40)
                    }
                }
                DynamicIslandExpandedRegion(.bottom) {
                    HStack {
                        Image("warriors")
                            .teamLogoModifier(frame: 20)
                        Text("S. Curry drains a 3")
                    }
                    // more content
                }
                DynamicIslandExpandedRegion(.center) {
                    Text ("5:24 3Q")
                    // more content
                }
            } compactLeading: {
                HStack {
                    Image("warriors")
                        .teamLogoModifier()
                    Text("100")
                        .fontWeight(.semibold)
                }
            } compactTrailing: {
                HStack {
                    Text("88")
                        .fontWeight(.semibold)
                    Image("bulls")
                        .teamLogoModifier()
                }
            } minimal: {
                Image("warriors")
                    .teamLogoModifier()
            }
            .widgetURL(URL(string: "http://www.apple.com"))
            .keylineTint(Color.red)
        }
    }
}

//struct GameWidgetLiveActivity_Previews: PreviewProvider {
//    static let attributes = GameAttributes()
//    static let contentState = GameAttributes.ContentState(value: 3)
//
//    static var previews: some View {
//        attributes
//            .previewContext(contentState, viewKind: .dynamicIsland(.compact))
//            .previewDisplayName("Island Compact")
//        attributes
//            .previewContext(contentState, viewKind: .dynamicIsland(.expanded))
//            .previewDisplayName("Island Expanded")
//        attributes
//            .previewContext(contentState, viewKind: .dynamicIsland(.minimal))
//            .previewDisplayName("Minimal")
//        attributes
//            .previewContext(contentState, viewKind: .content)
//            .previewDisplayName("Notification")
//    }
//}
