//
//  Footer.swift
//  USC-KSEA-iOSApp
//
//  Created by Danford Cho on 10/4/23.
//

import SwiftUI

struct Footer: View {
    @Binding var selectedTab: Tab
    var body: some View {
        GeometryReader { geometry in
            VStack(spacing: 0) {
                switch selectedTab {
                case .HomeView:
                    HomeView()
                case .AboutUs:
                    AboutUs()
                case .Eboard:
                    Eboard()
                case .Gallery:
                    Gallery()
                case .ContactUs:
                    ContactUs()
                }
                
                
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
                        Button {
                            selectedTab = .HomeView
                        } label: {
                            VStack {
                                Image(selectedTab == .HomeView ? "home-g" : "home-w")
                            }
                            //                        Spacer()
                        }
                        Divider()
                            .frame(width: 1.5, height: 30)
                            .background(Color.white)
//                            .padding([.leading, .trailing], 10)
                            .padding(.horizontal, geometry.size.width * 0.03)
                        
                        Button {
                            selectedTab = .AboutUs
                        } label: {
                            VStack {
                                Image(selectedTab == .AboutUs ? "help-g" : "help-w")

                            }
                        }
                        Divider()
                            .frame(width: 1.5, height: 30)
                            .background(Color.white)
//                            .padding([.leading, .trailing], 10)
                            .padding(.horizontal, geometry.size.width * 0.03)
                        
                        Button {
                            selectedTab = .Eboard
                        } label: {
                            VStack {
                                Image(selectedTab == .Eboard ? "profile-g" : "profile-w")
                            }
                        }
                        Divider()
                            .frame(width: 1.5, height: 30)
                            .background(Color.white)
//                            .padding([.leading, .trailing], 10)
                            .padding(.horizontal, geometry.size.width * 0.03)
                        
                        Button {
                            selectedTab = .Gallery
                        } label: {
                            VStack {
                                Image(selectedTab == .Gallery ? "picture-g" : "picture-w")
                            }
                        }
                        Divider()
                            .frame(width: 1.5, height: 30)
                            .background(Color.white)
//                            .padding([.leading, .trailing], 10)
                            .padding(.horizontal, geometry.size.width * 0.03)
                        
                        Button {
                            selectedTab = .ContactUs
                        } label: {
                            VStack {
                                Image(selectedTab == .ContactUs ? "email-g" : "email-w")
                            }
                        }
                        
                    }
                    .padding(.horizontal)

                } // ZStack
            } // VStack
        }
 
    }
}

struct Footer_Previews:
    PreviewProvider {
        static var previews: some
        View {
            // selectedTab = 0 for now.
            Footer(selectedTab: .constant(.HomeView))
        
    }
}

enum Tab {
    case HomeView, AboutUs, Eboard, Gallery, ContactUs
}
