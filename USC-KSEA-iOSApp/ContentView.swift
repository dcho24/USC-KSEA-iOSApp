//
//  ContentView.swift
//  USC-KSEA-iOSApp
//
//  Created by Danford Cho on 10/4/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack {
            Spacer()
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            
            Text("Hello World")
                .bold().padding()
                
            Spacer()
            
            VStack(spacing: 0) {
                // Yellow rectangle footer
                Rectangle()
                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                    .foregroundColor(.clear)
                    .frame(width: UIScreen.main.bounds.size.width, height: 16)
                    .background(Color(red:1, green: 0.78, blue: 0.17))

                // Red rectangle footer
                ZStack {
                    Rectangle()
                        .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing:0))
                        .foregroundColor(.clear)
                        .frame(width: UIScreen.main.bounds.width, height: 74)
                        .background(Color(red: 0.62, green: 0.13, blue: 0.21))
                    HStack {
                        HStack {
                            Spacer()
                            Image("home-01")
                            //.frame(width: 35, height: 35)
                            Spacer()
                        }
                        Rectangle()
                            .foregroundColor(.clear)
                            .frame(width: 1.5, height: 30)
                            .background(.white)
                        HStack {
                            Spacer()
                            Image("help-square-contained")
                            //.frame(width: 35, height: 35)
                            Spacer()
                        }
                        Rectangle()
                            .foregroundColor(.clear)
                            .frame(width: 1.5, height: 30)
                            .background(.white)
                        HStack {
                            Spacer()
                            Image("users-profiles-02")
                            //.frame(width: 35, height: 35)
                            Spacer()
                        }
                        Rectangle()
                            .foregroundColor(.clear)
                            .frame(width: 1.5, height: 30)
                            .background(.white)
                        HStack {
                            Spacer()
                            Image("image-02")
                            //.frame(width: 35, height: 35)
                            Spacer()
                        }
                        Rectangle()
                            .foregroundColor(.clear)
                            .frame(width: 1.5, height: 30)
                            .background(.white)
                        HStack {
                            Spacer()
                            Image("email")
                            //.frame(width: 35, height: 35)
                            Spacer()
                        }
                    }
                }
                
            }
            
                
                
        }
        .padding()
    }
}

struct ContentView_Previews:
    PreviewProvider {
        static var previews: some
        View {
            ContentView()
        
    }
}
