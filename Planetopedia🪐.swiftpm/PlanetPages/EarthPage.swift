import SwiftUI

struct EarthPage: View {
    var body: some View {
        ScrollView{
            VStack{
                HStack{
                    PlanetLabel(image: Image("earth1"))
                    Spacer()
                }
                .padding(.bottom)
                Divider()
                Text("Earth")
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
                    Text("150 million kms").font(.system(size: 17,weight: .light,design: .monospaced))
                }.padding()
                HStack{
                    Text("Radius:").font(.system(size: 20,weight: .bold,design: .rounded))
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Text("6371 kms").font(.system(size: 17,weight: .light,design: .monospaced))
                }.padding()
                HStack{
                    Text("AxialRotation:").font(.system(size: 20,weight: .bold,design: .rounded))
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Text("23.9 hrs").font(.system(size: 17,weight: .light,design: .monospaced))
                }.padding()
                HStack{
                    Text("OrbitalPeriod:").font(.system(size: 20,weight: .bold,design: .rounded))
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Text("365.25 Days").font(.system(size: 17,weight: .light,design: .monospaced))
                }.padding()
                HStack{
                    Text("Moons:").font(.system(size: 20,weight: .bold,design: .rounded))
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Text("1").font(.system(size: 17,weight: .light,design: .monospaced))
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
                    Text("15°C").font(.system(size: 17,weight: .light,design: .monospaced))
                }.padding()
                Divider()
                
                Text("Our home planet is the third planet from the Sun, and the only place we know of so far that’s inhabited by living things. The name Earth is at least 1,000 years old. the name Earth is a Germanic word, which simply means 'the ground'. Earth's vast oceans provided a convenient place for life to begin about 3.8 billion years ago. Earth is the only planet that has a single moon.").padding().font(.system(size: 20,weight: .semibold,design: .rounded)).frame(maxWidth: .infinity, alignment: .centerLastTextBaseline).padding(.bottom)
                
            }
        }
    }
}



