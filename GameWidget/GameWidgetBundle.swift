//
//  GameWidgetBundle.swift
//  GameWidget
//
//  Created by Thomas Prezioso Jr on 1/31/23.
//

import WidgetKit
import SwiftUI

@main
struct GameWidgetBundle: WidgetBundle {
    var body: some Widget {
        GameWidget()
        GameLiveActivity()
    }
}
