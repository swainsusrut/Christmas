//
//  Snowman.swift
//  Christmas
//
//  Created by Swain, Susrut (Cognizant) on 24/12/24.
//

import SwiftUI

struct Snowman: View {
    @State private var blinkLeftEye = false
    @State private var blinkRightEye = false
    
    var body: some View {
        ZStack {
            //MARK: Snow
            Circle()
                .frame(width: 30, height: 30)
                .foregroundStyle(.white)
                .offset(x: 60, y: 60)
                .shadow(radius: 2)
            Circle()
                .frame(width: 20, height: 20)
                .foregroundStyle(.white)
                .offset(x: -60, y: 65)
                .shadow(radius: 1)
            Circle()
                .frame(width: 25, height: 25)
                .foregroundStyle(.white)
                .offset(x: -45, y: 68)
                .shadow(radius: 2)
            Circle()
                .frame(width: 20, height: 20)
                .foregroundStyle(.white)
                .offset(x: 45, y: 68)
                .shadow(radius: 1)
            Circle()
                .frame(width: 23, height: 23)
                .foregroundStyle(.white)
                .offset(x: 30, y: 75)
                .shadow(radius: 1)
            
            //MARK: Snowman
            ZStack {
                //Body
                Circle()
                    .frame(width: 85, height: 85)
                    .foregroundStyle(.white)
                    .offset(y: 45)
                    .shadow(radius: 2)
                //Head
                Circle()
                    .frame(width: 50, height: 50)
                    .foregroundStyle(.white)
                    .offset(y: -12)
                //Buttons
                Circle()
                    .frame(width: 5, height: 5)
                    .foregroundStyle(.black)
                    .offset(x: -10, y: 30)
                Circle()
                    .frame(width: 5, height: 5)
                    .foregroundStyle(.black)
                    .offset(x: -10, y: 40)
            }
            
            ZStack {
                //Left Eye
                Circle()
                    .frame(width: 5, height: 5)
                    .foregroundStyle(.black)
                    .offset(x: 2, y: -25)
                    .scaleEffect(x: 1, y: blinkLeftEye ? 0.2 : 0.8, anchor: .center)
                    .animation(Animation.easeInOut(duration: 0.1).delay(1).repeatForever(autoreverses: false), value: blinkLeftEye)
                    .onAppear() {
                        blinkLeftEye.toggle()
                    }
                
                //Right Eye
                Circle()
                    .frame(width: 5, height: 5)
                    .foregroundStyle(.black)
                    .offset(x: -10, y: -25)
                    .scaleEffect(x: 1, y: blinkLeftEye ? 0.2 : 0.8, anchor: .center)
                    .animation(Animation.easeInOut(duration: 0.1).delay(1).repeatForever(autoreverses: false), value: blinkLeftEye)
                    .onAppear() {
                        blinkLeftEye.toggle()
                    }
                
                //Mouth
                Circle()
                    .trim(from: 2/4, to: 1)
                    .stroke(lineWidth: 2)
                    .frame(width: 12, height: 12)
                    .rotationEffect(.degrees(180), anchor: .center)
                    .foregroundStyle(.red)
                    .offset(x: -5, y: -12)
                
                //Hands
                Circle()
                    .frame(width: 25, height: 25)
                    .foregroundStyle(.white)
                    .shadow(radius: 3)
                    .offset(x: 40, y: 30)
                Circle()
                    .frame(width: 25, height: 25)
                    .foregroundStyle(.white)
                    .shadow(radius: 3)
                    .offset(x: -40, y: 30)
            }
            
            //Tie
            RoundedRectangle(cornerSize: CGSize(width: 15, height: 2))
                .frame(width: 41, height: 6)
                .foregroundStyle(.red)
                .offset(y: 4)
            RoundedRectangle(cornerSize: CGSize(width: 5, height: 12))
                .frame(width: 35, height: 6)
                .foregroundStyle(.red)
                .offset(x: 5, y: -2)
                .rotationEffect(.degrees(105), anchor: .leading)
            
            //Cap
            Capsule()
                .trim(from: 1/2, to: 1)
                .frame(width: 20, height: 30)
                .foregroundStyle(.red)
                .rotationEffect(.degrees(23), anchor: .center)
                .shadow(radius: 3)
                .offset(x: 10, y: -33)
            Circle()
                .frame(width: 8, height: 8)
                .foregroundStyle(.red)
                .shadow(radius: 3)
                .offset(x: 17, y: -47)
        }
    }
}

#Preview {
    Snowman()
}
