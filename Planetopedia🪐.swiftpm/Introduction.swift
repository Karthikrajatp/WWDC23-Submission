import SwiftUI
import AVFoundation

public var qplayer:AVAudioPlayer!


struct Introduction: View {   
    @Environment(\.colorScheme) var colorScheme
    @State private var isSoundPlaying = true
    @State private var isLabelAnimated = false
    @State private var isSpeakerButtonAnimated = false
    @State private var isMuteButtonAnimated = false
    
    var body: some View {
        NavigationStack{
            ZStack{ 
                Image("space")
                    .resizable(resizingMode: .stretch)
                    .edgesIgnoringSafeArea(.all)
                VStack{
                    HStack{
                        Text("Planetopedia 🪐")
                            .foregroundColor(.white)
                            .padding()
                            .padding(.bottom,30)
                            .font(.system(size: 40,weight: .bold, design:.rounded))
                            .font(.system(.title))
                            .fontWeight(.heavy)
                        
                        Button(action:{
                            if isSoundPlaying{
                                isSoundPlaying = false
                                self.playSound()
                                
                            }else{
                                isSoundPlaying = true 
                                qplayer.stop()
                                
                            }
                        }){
                            if isSoundPlaying{
                                Text("🔇")
                                    .buttonStyle(.borderless)
                                    .padding()
                                    .padding(.bottom,30)
                                    .font(.system(size: 40,weight: .bold, design:.rounded))
                                    .font(.system(.title))
                                    .fontWeight(.heavy)
                                    .scaleEffect(isMuteButtonAnimated ? 1.2 : 1.0)
                                    .onAppear{
                                        withAnimation(.easeInOut(duration: 0.9).repeatForever()){
                                            isMuteButtonAnimated = true
                                        }
                                    }
                            }else{
                                Text("🔈")
                                    .buttonStyle(.borderless)
                                    .padding()
                                    .padding(.bottom,30)
                                    .font(.system(size: 40,weight: .bold, design:.rounded))
                                    .font(.system(.title))
                                    .fontWeight(.heavy)
                                    .scaleEffect(isSpeakerButtonAnimated ? 1.2 : 1.0)
                                    .onAppear{
                                        withAnimation(.easeInOut(duration: 0.9).repeatForever()){
                                            isSpeakerButtonAnimated = true
                                        }
                                    }
                            }
                        }
                    }
                    
                    Text(" 🧑‍🚀: Hi Mate🙏 Welcome to Planetopedia🪐,I am Mr. ASTRONAUT and I would be guiding you throughout this journey, you would be starting as a Beginner🔰 and advancing yourself to become the Star⭐️ of Planetopedia🪐.You would be performing the following activities in this journey:")
                        .padding()
                        .padding(.top)
                        .font(.system(size: 21,weight: .bold, design:.monospaced))
                        .foregroundColor(.white)
                    
                    Text("𝟙.Learn Concepts📖")
                        .padding()
                        .font(.headline)
                        .font(.system(size:26,weight: .bold,design: .monospaced))
                        .foregroundColor(.white)
                    Text("𝟚.Visualise Models👀")
                        .padding()
                        .font(.headline)
                        .font(.system(size:26,weight: .bold,design: .monospaced))
                        .foregroundColor(.white)
                    Text("𝟛.Test your Understanding🧪")
                        .padding()
                        .font(.headline)
                        .font(.system(size:26,weight: .bold,design: .monospaced))
                        .foregroundColor(.white)
                    
                    
                    NavigationLink{
                        HomePage().navigationBarBackButtonHidden()
                    }label:{
                        Text("Start Your Journey 🔜 ")
                            .buttonStyle(.bordered)
                            .font(.largeTitle)
                            .font(.system(size: 40,weight: .semibold,design: .rounded))
                            .padding(.top,90)
                            .foregroundColor(.white)
                            .scaleEffect(isLabelAnimated ? 1.2 : 1.0)
                        
                    }
                    
                    .onAppear{
                        withAnimation(.easeInOut(duration: 0.9).repeatForever()){
                            isLabelAnimated = true
                        }
                        
                    }
                }
            }
        }
    }
    func playSound(){
        let url = Bundle.main.url(forResource: "Spacie", withExtension: ".mp4")
        guard url != nil else{
            return
        }
        do{
            qplayer = try AVAudioPlayer(contentsOf: url!)
            qplayer?.play()
        }catch{
            //do block will work!!
        }
    }
}

