import SwiftUI
import AVFoundation

struct HomePage: View{
    @Environment(\.colorScheme) var colorScheme
    @State private var isSoundPlaying = true
    @State private var isSpeakerButtonAnimated = false
    @State private var isMuteButtonAnimated = false
    
    var body: some View {
        NavigationStack{
            List{
                Section(header: Text("1.Learn the Concepts📖").font(.system(.title, design: .monospaced))) {
                    NavigationLink{
                        MercuryPage()
                    }label: {
                        PlanetRow(image: Image("mercury2"), name: "Mercury")
                    }
                    NavigationLink{
                        VenusPage()
                    }label: {
                        PlanetRow(image: Image("venus2"), name: "Venus")
                    }
                    NavigationLink{
                        EarthPage()
                    }label: {
                        PlanetRow(image: Image("earth2"), name: "Earth")
                    }
                    NavigationLink{
                        MarsPage()
                    }label: {
                        PlanetRow(image: Image("mars2"), name: "Mars")
                    }
                    NavigationLink{
                        JupiterPage()
                    }label: {
                        PlanetRow(image: Image("jupiter2"), name: "Jupiter")
                    }
                    NavigationLink{
                        SaturnPage()
                    }label: {
                        PlanetRow(image: Image("saturn2"), name: "Saturn")
                    }
                    NavigationLink{
                        UranusPage()
                    }label: {
                        PlanetRow(image: Image("uranus2"), name: "Uranus")
                    }
                    NavigationLink{
                        NeptunePage()
                    }label: {
                        PlanetRow(image: Image("neptune2"), name: "Neptune")
                    }
                    
                }
                Section(header: Text("2.Visualise the Model👀").font(.system(.title, design: .monospaced))){
                    NavigationLink{
                        ARIntroduction()
                    }label: {
                        Text("☀️ SolarSystem") .font(.system(size:26,weight: .bold,design: .serif)).padding(.vertical)
                    }
                }
                Section(header:Text("3.Test your Understanding🧪").font(.system(.title, design: .monospaced))){
                    NavigationLink{
                        QuizView()
                    }label: {
                        Text("🎯 Practice") .font(.system(size:26,weight: .bold,design: .serif))
                            .padding(.vertical)
                    }
                    
                }
                
            }
            .navigationTitle("Planteopedia 🪐").font(.system(.headline, design: .rounded, weight: .bold))
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
                }
                
            }
        }
    }
    func playSound(){
        let url = Bundle.main.url(forResource: "Space Theme", withExtension: ".mp4")
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

