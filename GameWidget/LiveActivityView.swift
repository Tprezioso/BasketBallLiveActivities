//
//  LiveActivityView.swift
//  GameWidgetExtension
//
//  Created by Thomas Prezioso Jr on 2/1/23.
//

import SwiftUI
import WidgetKit

struct LiveActivityView: View {
    var body: some View {
        ZStack {
            
            Image("activity-background")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .overlay {
                ContainerRelativeShape()
                        .fill(.black.opacity(0.3).gradient)
                              
            }
            
            VStack(spacing: 12) {
                HStack {
                    Image("warriors")
                        .teamLogoModifier(frame: 60)
                    Text("105")
                        .font(.system(size: 40, weight: .bold)).foregroundColor(.white)
                        .foregroundColor(.white)
                    Spacer()
                    Text("105")
                        .font(.system(size: 40, weight: .bold)).foregroundColor(.white)
                        .foregroundColor(.black.opacity(0.7))
                    Image("bulls")
                        .teamLogoModifier(frame: 60)
                    
                }
                
                HStack {
                    Image("warriors")
                        .teamLogoModifier(frame: 20)
                    Text("S. Curry drains a 3")
                        .font (.callout)
                        .fontWeight(.semibold)
                        .foregroundColor (.white.opacity(0.9))
                }
            }.padding()
        }
    }
}

struct LiveActivityView_Previews: PreviewProvider {
    static var previews: some View {
        LiveActivityView()
            .previewContext(WidgetPreviewContext(family: .systemMedium))
    }
}
