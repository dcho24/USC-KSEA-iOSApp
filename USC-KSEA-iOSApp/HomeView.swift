//
//  HomeView.swift
//  USC-KSEA-iOSApp
//
//  Created by Danford Cho on 10/4/23.
//

import SwiftUI

struct HomeView: View {
    @State private var selectedLink: Int?
    @State private var isImage1Pressed: Bool = false //for "kbbq"
    @State private var isImage2Pressed: Bool = false //for "Group_Image2"
    @State private var isImage3Pressed: Bool = false //for "springgm"

    var body: some View {
        NavigationView {
            GeometryReader { geometry in
                VStack {
                    // 1/3 top of screen
                    ZStack {
                        Image("IMG_2038")
                            .resizable()
                            .scaledToFill()
                            .frame(width: geometry.size.width, height: geometry.size.height / 3)
                            .clipped()
                            .overlay(
                                Color(red: 0.62, green: 0.13, blue: 0.21).opacity(0.85)
                            )
                            .edgesIgnoringSafeArea(.top)

                        VStack(spacing: 5) {
                            // header icons
                            HStack {
                                Image("menu-01").frame(width: 24, height: 24)
                                Spacer()
                                Image("Sash Logo 1")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 42, height: 33)
                                    .clipped()
                                Spacer()
                                Image("bell-03").frame(width: 24, height: 24)
                            }.padding([.leading, .trailing], 16)

                            Text("KSEA USC")
                                .font(Font.custom("Mont", size: 30))
                                .multilineTextAlignment(.center)
                                .foregroundColor(.white)
                                .bold()

                            Text("Korean-American Scientists and Engineers Association at USC")
                                .font(Font.custom("Mont", size: 12))
                                .multilineTextAlignment(.center)
                                .foregroundColor(Color(red: 1, green: 0.78, blue: 0.17))
                                .bold()
                        }
                        .frame(height: geometry.size.height / 3)
                        .padding(.top, -70)
                        .offset(y: -30)
                    }
                    

                    // middle portion of screen
                    ZStack {
                        RoundedRectangle(cornerRadius: 50)
                            .fill(Color.yellow.opacity(1.0))
                            .frame(width: geometry.size.width, height: geometry.size.height * 0.4)
                            .offset(y: -geometry.size.height / 6)

                        RoundedRectangle(cornerRadius: 50)
                            .fill(Color.white)
                            .frame(width: geometry.size.width, height: geometry.size.height * 0.4)
                            .overlay(
                                VStack {
                                    Text("Explore The Club")
                                        .font(.title)
                                        .bold()
                                        .padding(.bottom, 20)
                                        .foregroundColor(Color(red: 0.62, green: 0.13, blue: 0.21))
                                        .offset(y: 10) //move text up/down

                                    HStack(spacing: 15) {
                                        NavigationLink(destination: AboutUs()) {
                                            ZStack {
                                                Image("kbbq")
                                                    .resizable()
                                                    .brightness(isImage1Pressed ? -0.1 : 0)
                                                    .background(isImage1Pressed ? Color(white: 0.7) : Color.clear)
                                                    .frame(width: 220, height: 200)
                                                    .cornerRadius(15)
                                                    .overlay(
                                                        Text("About Us")
                                                            .foregroundColor(.white)
                                                            .bold()
                                                            .padding(4)
                                                            .cornerRadius(8),
                                                        alignment: .bottomLeading
                                                    )
                                            }
                                        }

                                        VStack(spacing: 10) {
                                            NavigationLink(destination: Eboard()) {
                                                ZStack {
                                                    Image("Group_Image2") //Our Eboard Image
                                                        .resizable()
                                                        .brightness(isImage2Pressed ? -0.1 : 0)
                                                        .background(isImage2Pressed ? Color(white: 0.7) : Color.clear)
                                                        .frame(width: 100, height: 90)
                                                        .cornerRadius(15)
                                                        .overlay(
                                                            Text("Our Eboard")
                                                                .foregroundColor(.white)
                                                                .bold()
                                                                .padding(4)
                                                                .cornerRadius(8),
                                                            alignment: .bottomLeading
                                                        )
                                                }
                                            }
                                            .gesture(
                                                DragGesture(minimumDistance: 0)
                                                    .onChanged({ _ in isImage2Pressed = true })
                                                    .onEnded({ _ in isImage2Pressed = false })
                                            )

                                            NavigationLink(destination: Gallery()) {
                                                Image("springgm") //Gallery Image
                                                    .resizable()
                                                    .brightness(isImage3Pressed ? -0.1 : 0)
                                                    .background(isImage3Pressed ? Color(white: 0.7) : Color.clear)
                                                    .frame(width: 100, height: 90)
                                                    .cornerRadius(15)
                                                    .overlay(
                                                        Text("Gallery")
                                                            .foregroundColor(.white)
                                                            .bold()
                                                            .padding(4)
                                                            .cornerRadius(8),
                                                        alignment: .bottomLeading
                                                    )
                                            }
                                            .gesture(
                                                DragGesture(minimumDistance: 0)
                                                    .onChanged({ _ in isImage3Pressed = true })
                                                    .onEnded({ _ in isImage3Pressed = false })
                                            )

                                        }

                                    }
                                }
                            )
                            .offset(y: -geometry.size.height / 7)
                    }

                    Spacer(minLength: 118) //moves footer up and down
                    Footer()
                }
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
