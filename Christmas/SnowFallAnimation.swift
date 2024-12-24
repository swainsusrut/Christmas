//
//  SnowFallAnimation.swift
//  Christmas
//
//  Created by Swain, Susrut (Cognizant) on 24/12/24.
//

import SwiftUI
import SpriteKit

struct SnowFallAnimation: View {
    var body: some View {
        GeometryReader { _ in
            SpriteView(scene: SnowFall(), options: [.allowsTransparency])
        }
        .background(.clear)
        .ignoresSafeArea()
    }
}

class SnowFall: SKScene {
    override func sceneDidLoad() {
        size = view?.window?.windowScene?.screen.bounds.size ?? CGSize(width: Int.zero, height: Int.zero)
        scaleMode = .resizeFill
        anchorPoint = CGPoint(x: 0.5, y: 1)
        backgroundColor = .clear
        
        //Create node and add to Scene
        let node = SKEmitterNode(fileNamed: "Snowflakes.sks")!
        addChild(node)
        
        //Full width
        node.particlePositionRange.dx = UIScreen.main.bounds.width
    }
}

#Preview {
    SnowFallAnimation()
}
