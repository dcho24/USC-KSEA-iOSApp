//
//  ContentView.swift
//  USC-KSEA-iOSApp
//
//  Created by Danford Cho on 10/4/23.
//

import SwiftUI

let screenWidth = UIScreen.main.bounds.width
let screenHeight = UIScreen.main.bounds.height
// hello
struct ContentView: View {
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                VStack { // background
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: screenWidth, height: screenHeight * 0.4)
                        .background(
                            Image("IMG_2038")
                                .resizable()
                                .scaledToFill()
                                .edgesIgnoringSafeArea(.all)
                                .overlay(
                                    Color(red: 0.62, green: 0.13, blue: 0.21).opacity(0.70)
                                )
                        )
                    Spacer().frame(height: screenHeight * 0.6)
                }
                
                VStack {
                    HStack {
                        Image("menu-01")
                            .frame(width: 24, height: 24)
                        
                        Spacer()
                        
                        Image("Sash Logo 1")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 42, height: 33)
                            .clipped()
                        
                        Spacer()
                        
                        Image("bell-03")
                            .frame(width: 24, height: 24)
                    }
                    .padding(.horizontal, screenWidth * 0.05)
                    
                    Spacer()
                }
                
                VStack {
                    Spacer().frame(height: screenHeight * 0.2)
                    
                    Text("KSEA USC")
                        .font(Font.custom("Mont", size: 30))
                        .multilineTextAlignment(.center)
                        .foregroundColor(.white)
                        .bold()
                    
                    Text("Korean-American Scientists and Engineers Association at USC")
                        .font(Font.custom("Mont", size: 10))
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color(red: 1, green: 0.78, blue: 0.17))
                        .bold()
                    
                    Spacer()
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
