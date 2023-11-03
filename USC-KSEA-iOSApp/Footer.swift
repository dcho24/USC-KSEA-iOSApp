//
//  Footer.swift
//  USC-KSEA-iOSApp
//
//  Created by Danford Cho on 10/4/23.
//

import SwiftUI

struct Footer: View {
    @Binding var selectedTab: Int
    var body: some View {

        VStack(spacing: 0) {
            // Yellow band
            Rectangle()
                .foregroundColor(.clear)
                .frame(height: 16)
                .frame(maxWidth: .infinity)
                .background(Color(red:1, green:0.78, blue: 0.17))
            
            // Red background
            ZStack {
                Rectangle()
                    .padding(EdgeInsets(top:0, leading:0, bottom:0, trailing:0))
                    .foregroundColor(.clear)
                    .frame(height: 74)
                    .frame(width: .infinity)
                    .background(Color(red:0.62, green: 0.13, blue: 0.21))
                // Icons and bars
                // Rectangle() = bars
                // HStack = icons
                HStack {
                    HStack{
                        Spacer()
                        Button (action: {
                            selectedTab = 0
                        }) {
                            Image(selectedTab == 0 ? "home-g" : "home-w")
                        }
                        Spacer()
                    }
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 1.5, height: 30)
                        .background(.white)
                    HStack{
                        Spacer()
                        Button (action: {
                            selectedTab = 1
                        }) {
                            Image(selectedTab == 1 ? "help-g" : "help-w")
                        }
                        Spacer()
                    }
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 1.5, height: 30)
                        .background(.white)
                    HStack{
                        Spacer()
                        Button (action: {
                            selectedTab = 2
                        }) {
                            Image(selectedTab == 2 ? "profile-g" : "profile-w")
                        }
                        Spacer()
                    }
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 1.5, height: 30)
                        .background(.white)
                    HStack{
                        Spacer()
                        Button (action: {
                            selectedTab = 3
                        }) {
                            Image(selectedTab == 3 ? "picture-g" : "picture-w")
                        }
                        Spacer()
                    }
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 1.5, height: 30)
                        .background(.white)
                    HStack{
                        Spacer()
                        Button (action: {
                            selectedTab = 4
                        }) {
                            Image(selectedTab == 4 ? "email-g" : "email-w")
                        }
                        Spacer()
                    }
                } // HStack
            } // ZStack
        } // VStack
 
    }
}

struct Footer_Previews:
    PreviewProvider {
        static var previews: some
        View {
            // selectedTab = 0 for now
            Footer(selectedTab: .constant(0))
        
    }
}
