//
//  HomeView.swift
//  USC-KSEA-iOSApp
//
//  Created by Danford Cho on 10/4/23.
//

import SwiftUI

struct HomeView: View {
    @State private var selectedLink: Int?

    var body: some View {
        NavigationView {
            GeometryReader { geometry in
                VStack {
                    // Top portion of the view with background, logos, and text
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

                                    HStack(spacing: 10) {
                                        NavigationLink(value: AboutUsView(), label: {
                                            Image("kbbq")
                                                .resizable()
                                                .frame(width: 180, height: 200)
                                                .cornerRadius(15)
                                                .overlay(
                                                    Text("About Us")
                                                        .foregroundColor(.white)
                                                        .bold()
                                                        .padding(4)
                                                        .cornerRadius(8),
                                                    alignment: .bottomLeading
                                                )
                                        })

                                        VStack(spacing: 10) {
                                            NavigationLink(value: OurEboardView(), label: {
                                                Image("Group_Image2")
                                                    .resizable()
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
                                            })

                                            NavigationLink(value: GalleryView(), label: {
                                                Image("springgm")
                                                    .resizable()
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
                                            })
                                        }
                                    }
                                }
                            )
                            .offset(y: -geometry.size.height / 7)
                    }

                    Spacer(minLength: 118)
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

struct AboutUsView: View, Hashable {
    var body: some View {
        Text("This is the About Us page.")
    }
}

struct OurEboardView: View, Hashable {
    var body: some View {
        Text("This is the Our Eboard page.")
    }
}

struct GalleryView: View, Hashable {
    var body: some View {
        Text("This is the Gallery page.")
    }
}
