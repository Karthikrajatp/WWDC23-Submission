import SwiftUI

struct Conclude: View {
    @State private var isLabelAnimated = false
    @Environment(\.colorScheme) var colorScheme
    var body: some View {
        ZStack{
            Image("space")
                .resizable(resizingMode: .stretch)
                .edgesIgnoringSafeArea(.all)
            NavigationStack{
                VStack{
                    VStack(alignment: .leading){
                        Text("Congratulations🎉")
                            .padding(.horizontal,10)
                            .font(.system(size: 60, weight: .bold, design: .rounded))
                            .foregroundColor(Color.white)
                            .padding()
                        
                        Text("🧑‍🚀: Finally we have arrived at the end of our Planetopedia🪐 journey and you have been fully trained and have been promoted as the Star ⭐️ of the Planetopedia🪐. ")
                            .font(.system(size: 22,weight: .ultraLight, design:.monospaced))
                            .foregroundColor(Color.white)
                            .padding(.horizontal,10)
                        Divider()
                        Spacer()
                        
                    }
                    VStack{
                        Text("🔰⭐️")
                            .font(.system(size: 100,weight:.bold,design: .rounded))
                            .padding(.bottom,100)
                            .opacity(isLabelAnimated ? 0.4:1.5)
                    }
                    .onAppear{
                        withAnimation(.easeInOut(duration: 1.2).repeatForever()){
                            isLabelAnimated = true
                        }
                    }
                    NavigationLink {
                        Introduction().navigationBarBackButtonHidden(true)
                    } label: {
                        Text("Restart 🔄")
                    }
                    .buttonStyle(.bordered)
                    .font(.system(size: 30,weight: .heavy,design: .monospaced))
                    .foregroundColor(Color.white)
                    .padding(.top,10)
                    .padding(.bottom,100)
                    
                    
                    Spacer()
                    
                    Divider()
                    
                    VStack{
                        Text("Designed and Developed with ❤️ by KarthikRaja T P for WWDC2023")
                            .font(.system(.footnote, design: .rounded, weight: .semibold))
                            .foregroundColor(.white)
                        Text("Created using the Swift Playgrounds and Xcode🔨")
                            .font(.system(.footnote, design: .rounded, weight: .semibold))
                            .foregroundColor(.white)
                        Text("All the 3D Models were built using Reality Composer and Reality Converter")
                            .font(.system(.footnote, design: .rounded, weight: .semibold))
                            .foregroundColor(.white)
                        Text("All the assets used in the app were generated by KarthikRaja T P using the DALL.E 2 Tool")
                            .font(.system(.footnote, design: .rounded, weight: .semibold))
                            .foregroundColor(.white)
                        Text("All the sounds used in the app were generated by KarthikRaja T P using beatoven.ai ")
                            .font(.system(.footnote, design: .rounded, weight: .semibold))
                            .foregroundColor(.white)
                    }
                    Spacer()
                    
                }
            }
        }
    }
}

