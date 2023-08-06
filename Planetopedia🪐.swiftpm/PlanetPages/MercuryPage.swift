import SwiftUI

struct MercuryPage: View {
    var body: some View {
        ScrollView{
            VStack{
                HStack{
                    PlanetLabel(image: Image("mercury1"))
                    Spacer()
                }
                .padding(.bottom)
                Text("Mercury")
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
                    Text("58 million kms").font(.system(size: 17,weight: .light,design: .monospaced))
                }.padding()
                HStack{
                    Text("Radius:").font(.system(size: 20,weight: .bold,design: .rounded))
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Text("2,439.7 kms").font(.system(size: 17,weight: .light,design: .monospaced))
                }.padding()
                HStack{
                    Text("AxialRotation:").font(.system(size: 20,weight: .bold,design: .rounded))
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Text("59 EarthDays").font(.system(size: 17,weight: .light,design: .monospaced))
                }.padding()
                HStack{
                    Text("OrbitalPeriod:").font(.system(size: 20,weight: .bold,design: .rounded))
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Text("87.969 Days").font(.system(size: 17,weight: .light,design: .monospaced))
                }.padding()
                HStack{
                    Text("Moons:").font(.system(size: 20,weight: .bold,design: .rounded))
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Text("0").font(.system(size: 17,weight: .light,design: .monospaced))
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
                    Text("167°C").font(.system(size: 17,weight: .light,design: .monospaced))
                }.padding()
                Divider()
                
                Text("The smallest planet in our solar system and nearest to the Sun, Mercury is only slightly larger than Earth's Moon. Mercury is appropriately named for the swiftest of the ancient Roman gods. Mercury is the second densest planet, after Earth. Mercury's surface resembles that of Earth's Moon, scarred by many impact craters resulting from collisions with meteoroids and comets.").padding().font(.system(size: 20,weight: .semibold,design: .rounded)).frame(maxWidth: .infinity, alignment: .centerLastTextBaseline).padding(.bottom)
            }
        }
    }
}

