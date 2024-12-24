//
//  ContentView.swift
//  Christmas
//
//  Created by Swain, Susrut (Cognizant) on 24/12/24.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [
                Color.init(red: 34 / 255, green: 3 / 255, blue: 50 / 255),
                Color.init(red: 34 / 255, green: 3 / 255, blue: 120 / 255)
            ]), startPoint: .top, endPoint: .bottom)
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .ignoresSafeArea()
            
            VStack {
                Spacer()
                RoundedRectangle(cornerRadius: 2)
                    .frame(height: 120)
                    .foregroundStyle(Color.init(red: 255/255, green: 250/255, blue: 250/255))
            }
            
            HStack {
                Snowman()
                .frame(maxWidth: .infinity, alignment: .trailing)
                .padding(.trailing, -10)
                Image("MerryChristmas")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding(.trailing, 20)
                    .padding(.bottom, 70)
                    .rotationEffect(.degrees(-10), anchor: .bottom)
            }
            .frame(maxHeight: .infinity, alignment: .bottomLeading)
            .padding(.trailing, -25)
            
            SnowFallAnimation()
        }
        .ignoresSafeArea()
    }
}

#Preview {
    ContentView()
}
