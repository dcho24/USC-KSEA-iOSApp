//
//  ContentView.swift
//  USC-KSEA-iOSApp
//
//  Created by Danford Cho on 10/4/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        GeometryReader{geometry in
            ZStack{
                VStack{ // background
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 402, height: 352)
                        .background(
                            Image("IMG_2038")
                                .resizable()
                                .scaledToFill()
                                .edgesIgnoringSafeArea(.all)
                                .overlay(
                                    Color(red: 0.62, green: 0.13, blue: 0.21).opacity(0.70)
                                    // hello
                                )
                        )
                    Spacer().frame(height:503)
                }
                Spacer()
                
                VStack{ // left menu icon
                    Spacer().frame(height:28)
                    HStack{
                        Spacer().frame(width:24)
                        Image("menu-01")
                            .frame(width:24, height:24)
                        Spacer().frame(width:128)
                        Image("Sash Logo 1")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 42, height: 33)
                            .clipped()
                        Spacer().frame(width:128)
                        Image("bell-03")
                            .frame(width:24,height:24)
                        Spacer()
                    }
                    Spacer()
                }
                Text("KSEA USC") 
                    .font(Font.custom("Mont", size: 30))
                    .multilineTextAlignment(.center)
                    .foregroundColor(.white)
                    .position(x: geometry.size.width / 2, y: 128)
                    .bold()
                
                Text("Korean-American Scientists and Engineers Association at USC")
                .font(Font.custom("Mont", size: 10))
                .multilineTextAlignment(.center)
                .position(x: geometry.size.width / 2, y: 160)
                .foregroundColor(Color(red: 1, green: 0.78, blue: 0.17))
                .bold()
                
            }
        }
        
    }
}

#Preview {
    ContentView()
}
