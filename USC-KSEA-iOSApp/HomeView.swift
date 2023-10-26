//
//  HomeView.swift
//  USC-KSEA-iOSApp
//
//  Created by Danford Cho on 10/4/23.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        GeometryReader { geometry in
            VStack {
                ZStack {
                    // Background for the top 1/3
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
                        // Header Icons
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
                        .padding([.leading, .trailing], 16)
                        
                        // Texts
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
                }

                // layered middle boxes
                ZStack {
                    RoundedRectangle(cornerRadius: 20)
                        .fill(Color.yellow.opacity(1.0)) // Change the color and opacity as needed
                        .frame(width: geometry.size.width, height: geometry.size.height * 0.4)
                        .offset(y: -geometry.size.height / 10) //move yellow box

                    RoundedRectangle(cornerRadius: 20)
                        .fill(Color.white)
                        .frame(width: geometry.size.width, height: geometry.size.height * 0.4) // Fills the screen width
                        .shadow(radius: 2)
                        .overlay(
                            VStack {
                                Text("Explore the Club")
                                    .font(.title)
                                    .padding(.top)
                                    .bold()

                                Image("FightOn!")
                                    .resizable()
                                    .frame(width: 100, height: 100)
                                    .cornerRadius(15)

                            }
                        )
                        .offset(y: -geometry.size.height / 18)
                }

                Spacer(minLength: 130)

                // Footer
                Footer()
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
