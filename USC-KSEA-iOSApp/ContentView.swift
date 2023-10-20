//
//  ContentView.swift
//  USC-KSEA-iOSApp
//
//  Created by Danford Cho on 10/4/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {

        VStack(spacing: 0) {
            ScrollView {
                // contents
            }
            Spacer()
            // Yellow rectangle footer
            Rectangle()
                .foregroundColor(.clear)
                .frame(height: 16)
                .frame(maxWidth: .infinity)
                .background(Color(red:1, green:0.78, blue: 0.17))
            
            ZStack {
                Rectangle()
                    .padding(EdgeInsets(top:0, leading:0, bottom:0, trailing:0))
                    .foregroundColor(.clear)
                    .frame(height: 74)
                    .frame(width: .infinity)
                    .background(Color(red:0.62, green: 0.13, blue: 0.21))
                HStack {
                    HStack{
                        Spacer()
                        Image("home-01")
                        Spacer()
                    }
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 1.5, height: 30)
                        .background(.white)
                    HStack {
                        Spacer()
                        Image("help-square-contained")
                        Spacer()
                    }
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 1.5, height: 30)
                        .background(.white)
                    HStack {
                        Spacer()
                        Image("users-profiles-02")
                        Spacer()
                    }
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 1.5, height: 30)
                        .background(.white)
                    HStack {
                        Spacer()
                        Image("image-02")
                        Spacer()
                    }
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 1.5, height: 30)
                        .background(.white)
                    HStack {
                        Spacer()
                        Image("email")
                        Spacer()
                    }
                } // HStack
            } // ZStack
        } // VStack
 
    }
}

struct ContentView_Previews:
    PreviewProvider {
        static var previews: some
        View {
            ContentView()
        
    }
}
