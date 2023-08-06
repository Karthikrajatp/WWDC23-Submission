import SwiftUI

struct MarsPage: View {
    var body: some View {
        ScrollView{
            VStack{
                HStack{
                    PlanetLabel(image: Image("mars1"))
                    Spacer()
                }
                .padding(.bottom)
                Text("Mars")
                    .font(.title)
                    .multilineTextAlignment(.center)
                    .frame(maxWidth: .infinity, alignment: .trailing)
                    .fontWeight(.heavy)
                    .padding()
                Divider()
                HStack{
                    Text("Formation:").font(.system(size: 20,weight: .bold,design: .rounded))
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Text("4.5 billion years ago").font(.system(size: 17,weight: .light,design: .monospaced))
                }.padding()
                HStack{
                    Text("Distance from Sun: ").font(.system(size: 20,weight: .bold,design: .rounded))
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Text("228 million kms").font(.system(size: 17,weight: .light,design: .monospaced))
                }.padding()
                HStack{
                    Text("Radius:").font(.system(size: 20,weight: .bold,design: .rounded))
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Text("3390 kms").font(.system(size: 17,weight: .light,design: .monospaced))
                }.padding()
                HStack{
                    Text("AxialRotation:").font(.system(size: 20,weight: .bold,design: .rounded))
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Text("24.6 hrs").font(.system(size: 17,weight: .light,design: .monospaced))
                }.padding()
                HStack{
                    Text("OrbitalPeriod:").font(.system(size: 20,weight: .bold,design: .rounded))
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Text("687 EarthDays").font(.system(size: 17,weight: .light,design: .monospaced))
                }.padding()
                HStack{
                    Text("Moons:").font(.system(size: 20,weight: .bold,design: .rounded))
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Text("2").font(.system(size: 17,weight: .light,design: .monospaced))
                }.padding()
                
            }
            VStack{
                HStack{
                    Text("Rings:").font(.system(size: 20,weight: .bold,design: .rounded))
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Text("0").font(.system(size: 17,weight: .light,design: .monospaced))
                }.padding()
                
                HStack{
                    Text("Mean Temperature:").font(.system(size: 20,weight: .bold,design: .rounded))
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Text("-65°C").font(.system(size: 17,weight: .light,design: .monospaced))
                }.padding()
                Divider()
                
                Text("Mars was named by the ancient Romans for their god of war because its reddish color was reminiscent of blood. The Red Planet is actually many colors. At the surface, we see colors such as brown, gold, and tan. Mars is home to the largest volcano in the solar system, Olympus Mons. Mars has a thin atmosphere made up mostly of carbon dioxide, nitrogen, and argon gases.").padding().font(.system(size: 20,weight: .semibold,design: .rounded)).frame(maxWidth: .infinity, alignment: .centerLastTextBaseline).padding(.bottom)
                
            }
        }
    }
}

