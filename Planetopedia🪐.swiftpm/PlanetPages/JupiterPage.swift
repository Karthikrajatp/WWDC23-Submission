import SwiftUI

struct JupiterPage: View {
    var body: some View {
        ScrollView{
            VStack{
                HStack{
                    PlanetLabel(image: Image("jupiter1"))
                    Spacer()
                }
                .padding(.bottom)
                Text("Jupiter")
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
                    Text("778 million kms").font(.system(size: 17,weight: .light,design: .monospaced))
                }.padding()
                HStack{
                    Text("Radius:").font(.system(size: 20,weight: .bold,design: .rounded))
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Text("69,911 kms").font(.system(size: 17,weight: .light,design: .monospaced))
                }.padding()
                HStack{
                    Text("AxialRotation:").font(.system(size: 20,weight: .bold,design: .rounded))
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Text("9.93 hrs").font(.system(size: 17,weight: .light,design: .monospaced))
                }.padding()
                HStack{
                    Text("OrbitalPeriod:").font(.system(size: 20,weight: .bold,design: .rounded))
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Text("11.86 EarthYears").font(.system(size: 17,weight: .light,design: .monospaced))
                }.padding()
                HStack{
                    Text("Moons:").font(.system(size: 20,weight: .bold,design: .rounded))
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Text("80").font(.system(size: 17,weight: .light,design: .monospaced))
                }.padding()
                
            }
            VStack{
                HStack{
                    Text("Rings:").font(.system(size: 20,weight: .bold,design: .rounded))
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Text("4").font(.system(size: 17,weight: .light,design: .monospaced))
                }.padding()
                
                HStack{
                    Text("Mean Temperature:").font(.system(size: 20,weight: .bold,design: .rounded))
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Text("-110°C").font(.system(size: 17,weight: .light,design: .monospaced))
                }.padding()
                Divider()
                
                Text("Jupiter is the fifth planet from our Sun and is, by far, the largest planet in the solar system – more than twice as massive as all the other planets combined. Jupiter, being the biggest planet, gets its name from the king of the ancient Roman gods. Jupiter's four largest moons – Io, Europa, Ganymede, and Callisto – were first observed by the astronomer Galileo Galilei in 1610 using an early version of the telescope. Jupiter's atmosphere is made up mostly of hydrogen (H2) and helium (He).").padding().font(.system(size: 20,weight: .semibold,design: .rounded)).frame(maxWidth: .infinity, alignment: .centerLastTextBaseline).padding(.bottom)
                
            }
        }
    }
}

