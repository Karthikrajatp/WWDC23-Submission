import SwiftUI

struct PlanetLabel: View {
    var image:Image
    var body: some View {
        HStack{
            image
                .resizable()
                .scaledToFit()
                .frame(width: 320, height: 240)
                .clipShape(Circle())
                .overlay{
                    Circle().stroke(.white,lineWidth: 4)
                }
                .shadow(radius: 10)
        }
        
    }
    
}



