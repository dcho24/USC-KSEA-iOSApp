import SwiftUI

struct ContentView: View {
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                VStack {
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: geometry.size.width, height: geometry.size.height * 0.4)
                        .background(
                            Image("IMG_2038")
                                .resizable()
                                .scaledToFill()
                                .edgesIgnoringSafeArea(.all)
                                .overlay(
                                    Color(red: 0.62, green: 0.13, blue: 0.21).opacity(0.70)
                                )
                        )
                    Spacer().frame(height: geometry.size.height * 0.6)
                }
                // hello
                VStack {
                    HStack {
                        Image("menu-01")
                            .resizable()
                            .frame(width: geometry.size.width * 0.06, height: geometry.size.width * 0.06)
                        
                        Spacer()
                        
                        Image("Sash Logo 1")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: geometry.size.width * 0.10, height: geometry.size.width * 0.08)
                            .clipped()
                        
                        Spacer()
                        
                        Image("bell-03")
                            .resizable()
                            .frame(width: geometry.size.width * 0.06, height: geometry.size.width * 0.06)
                    }
                    .padding(.horizontal, geometry.size.width * 0.05)
                    
                    Spacer()
                }
                
                VStack {
                    Spacer().frame(height: geometry.size.height * 0.2)
                    
                    Text("KSEA USC")
                        .font(Font.custom("Mont", size: 30))
                        .multilineTextAlignment(.center)
                        .foregroundColor(.white)
                        .bold()
                    
                    Text("Korean-American Scientists and Engineers Association at USC")
                        .font(Font.custom("Mont", size: 10))
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color(red: 1, green: 0.78, blue: 0.17))
                        .bold()
                    
                    Spacer()
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
