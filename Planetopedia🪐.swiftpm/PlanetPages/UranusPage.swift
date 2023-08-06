import SwiftUI

struct UranusPage: View {
    var body: some View {
        ScrollView{
            VStack{
                HStack{
                    PlanetLabel(image: Image("uranus1"))
                    Spacer()
                }
                .padding(.bottom)
                Text("Uranus")
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
                    Text("2.9 billion kms").font(.system(size: 17,weight: .light,design: .monospaced))
                }.padding()
                HStack{
                    Text("Radius:").font(.system(size: 20,weight: .bold,design: .rounded))
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Text("25,362 kms").font(.system(size: 17,weight: .light,design: .monospaced))
                }.padding()
                HStack{
                    Text("AxialRotation:").font(.system(size: 20,weight: .bold,design: .rounded))
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Text("17.2 hrs").font(.system(size: 17,weight: .light,design: .monospaced))
                }.padding()
                HStack{
                    Text("OrbitalPeriod:").font(.system(size: 20,weight: .bold,design: .rounded))
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Text("84 EarthYears").font(.system(size: 17,weight: .light,design: .monospaced))
                }.padding()
                HStack{
                    Text("Moons:").font(.system(size: 20,weight: .bold,design: .rounded))
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Text("27").font(.system(size: 17,weight: .light,design: .monospaced))
                }.padding()
                
            }
            VStack{
                HStack{
                    Text("Rings:").font(.system(size: 20,weight: .bold,design: .rounded))
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Text("13").font(.system(size: 17,weight: .light,design: .monospaced))
                }.padding()
                
                HStack{
                    Text("Mean Temperature:").font(.system(size: 20,weight: .bold,design: .rounded))
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Text("-195°C").font(.system(size: 17,weight: .light,design: .monospaced))
                }.padding()
                Divider()
                
                Text("The seventh planet from the Sun with the third largest diameter in our solar system, Uranus is very cold and windy. It rotates at a nearly 90-degree angle from the plane of its orbit. The temperatures, pressures, and materials that characterize this planet are most likely too extreme and volatile for organisms to adapt to. Uranus is one of two ice giants in the outer solar system. ").padding().font(.system(size: 20,weight: .semibold,design: .rounded)).frame(maxWidth: .infinity, alignment: .centerLastTextBaseline).padding(.bottom)
                
            }
        }
    }
}

