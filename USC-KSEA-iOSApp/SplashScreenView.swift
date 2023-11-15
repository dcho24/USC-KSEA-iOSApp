//
//  SplashScreenView.swift
//  USC-KSEA-iOSApp
//
//  Created by Danford Cho on 10/20/23.
//

import SwiftUI

struct SplashScreenView: View {
    @State private var currentImageIndex = 0
    @State private var loopCount = 0
    let maxLoopCount = 3 //each image will appear 3 times each
    let backgroundImages = ["Group_Image1", "Group_Image2", "Group_Image3", "USC Campus Photo"]
    
    var body: some View {
        ZStack {
            // alternating background images
            Image(backgroundImages[currentImageIndex % backgroundImages.count])
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
                .overlay(Color.black.opacity(0.5))  // black image overlay
                .clipped()
                .id(currentImageIndex)  // adding unique id here
                .transition(.opacity)  // fade in/out transition
                .edgesIgnoringSafeArea(.all)
            
            // Logo
            Image("USC KSEA Logo")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
                .offset(y: -UIScreen.main.bounds.height * 0.2) // move the logo to the upper 3/4 of the screen
        }
        .onAppear {
            // start timer when the view appears
            Timer.scheduledTimer(withTimeInterval: 2, repeats: true) { timer in
                withAnimation {
                    currentImageIndex += 1
                }
                
                // reset the index
                if currentImageIndex == backgroundImages.count {
                    currentImageIndex = 0
                    loopCount += 1
                    
                    // stopping the timer when each image has been shown 3 times each
                    if loopCount == maxLoopCount {
                        timer.invalidate()
                    }
                        }
                    }
                }
            }
        }

struct SplashScreenView_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreenView()
    }
}

//#Preview {
//    SplashScreenView()
//}
