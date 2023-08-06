import SwiftUI

struct ARIntroduction: View {
    @Environment(\.colorScheme) var colorScheme
    var body: some View {
        ZStack{
            Image("space")
                .resizable(resizingMode: .stretch)
                .edgesIgnoringSafeArea(.all)
            NavigationStack{
                VStack{
                    VStack(alignment: .leading){
                        Text("Visualisation 👁️👁️")
                            .font(.system(size: 60, weight: .bold, design: .rounded))
                            .padding(.vertical,30)
                            .foregroundColor(Color.white)
                            .padding(.horizontal,20)
                        Text("🧑‍🚀: I hope you had a great understanding of the planets in the last section.Now it's time to visualise those through your cameras📷. Navigate through the button given below to visualise those planets.")
                            .padding(.horizontal,10)
                            .foregroundColor(Color.white)
                            .padding(.bottom,30)
                            .font(.system(size: 21,weight: .bold, design:.monospaced))
                            .multilineTextAlignment(.center)
                        Divider()
                        VStack{
                            Text("Note: Tap🫵 on your screen when you find any large horizontal plane/objects to launch the model and visualize the planets, also tap on any planet to identify them using Cards that float above them and have fun😉 by understanding the concepts better.")
                                .foregroundColor(Color.white)
                                .padding(.horizontal,36)
                                .padding(.top,30)
                                .font(.system(size: 16,weight: .medium,design: .rounded))
                            
                            Spacer()
                            
                            NavigationLink{
                                ARViewContainer()
                            }label: {
                                Text("Visualise 👁️👁️")
                                    .foregroundColor(Color.white)
                                    .font(.system(size: 25,weight: .semibold,design: .rounded))
                            }
                            .buttonStyle(.bordered)
                            .padding(.vertical,30)
                            
                        }.padding(.top,20)
                    }
                    
                    Spacer()
                }
            }
        }
    }
}











