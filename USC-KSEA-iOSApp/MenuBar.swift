//
//  MenuBar.swift
//  USC-KSEA-iOSApp
//
//  Created by Jessica Hahm on 11/1/23.
//

import SwiftUI




// yellow when user clicks the button.
struct MenuBar: View {
    
    // plz work
    @State private var isHome = false
    @State private var isAboutUs = false
    @State private var isEBoard = false
    @State private var isGallery = false
    @State private var isContactUs = false
    var body: some View {
        NavigationView{
            GeometryReader { geometry in
                VStack {
                    // hello
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
                                Image("yellowMenu").frame(width: 24, height: 24)
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
                    
                    ZStack {
                        Spacer(minLength:50)
                        RoundedRectangle(cornerRadius: 50)
                            .fill(Color.yellow.opacity(1.0))
                            .frame(width: geometry.size.width, height: geometry.size.height * 0.4)
                            .offset(y: -geometry.size.height / 6)
                        //
                        RoundedRectangle(cornerRadius: 50)
                            .fill(Color.white)
                            .frame(width: geometry.size.width, height: geometry.size.height * 0.4)
                            .overlay(
                                VStack(spacing: 20) {
                                    
                                    
                                   
                                    
                                    NavigationLink(destination: HomeView().navigationBarBackButtonHidden(true)){
                                        MenuItem(text: "Home")
                                    }
                                    .gesture(
                                        DragGesture(minimumDistance: 0)
                                            .onChanged({_ in  isHome = true})
                                            .onEnded({_ in  isHome = false}))
                                
                                    NavigationLink(destination: AboutUs()){
                                        MenuItem(text: "About Us")
                                    }
                                    .gesture(
                                        DragGesture(minimumDistance: 0)
                                            .onChanged({_ in  isAboutUs = true})
                                            .onEnded({_ in  isAboutUs = false}))
                                
                                    NavigationLink(destination: Eboard()){
                                        MenuItem(text: "E-Board Roster")
                                    }
                                    .gesture(
                                        DragGesture(minimumDistance: 0)
                                            .onChanged({_ in  isEBoard = true})
                                            .onEnded({_ in  isEBoard = false}))
                                    
                                    NavigationLink(destination: Gallery()){
                                        MenuItem(text: "Gallery")
                                    }
                                    .gesture(
                                        DragGesture(minimumDistance: 0)
                                            .onChanged({_ in  isGallery = true})
                                            .onEnded({_ in  isGallery = false}))
                                    
                                    NavigationLink(destination: ContactUs()){
                                        MenuItem(text: "Contact Us")
                                    }
                                    .gesture(
                                        DragGesture(minimumDistance: 0)
                                            .onChanged({_ in  isContactUs = true})
                                            .onEnded({_ in  isContactUs = false}))
                                    
                                }
                                    .frame(height: geometry.size.height * 0.4 - 40) //
                                    .padding(.top, 15)
                                    .offset(y: 115) //move text up/down
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

struct MenuItem: View {
    let text: String

    var body: some View {

        Text(text)
            .font(Font.custom("Mont", size: 24))
            .bold()
            .multilineTextAlignment(.center)
            .foregroundColor(Color(red: 0.62, green: 0.13, blue: 0.21))
            .padding(.vertical, 30)
            .overlay(
                Rectangle().frame(width: 403,height: 12)
                    .padding(.bottom, -10)
                    .foregroundColor(.yellow.opacity(1)), alignment: .bottom
            )
            
        }
           
    }
//}


struct MenuBar_Previews: PreviewProvider{
    static var previews: some View{
        MenuBar()
    }
}



