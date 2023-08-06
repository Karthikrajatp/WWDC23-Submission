import SwiftUI

struct PlanetRow: View {
    var image:Image
    var name:String
    var body: some View {
        HStack{
            image
                .resizable()
                .frame(width: 80,height: 80)
            Text("\(name)")
                .font(.system(size:24,weight: .bold,design: .serif))
            Spacer()
        } 
    }
}



