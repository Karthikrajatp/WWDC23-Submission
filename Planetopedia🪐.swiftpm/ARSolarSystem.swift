import SwiftUI
import RealityKit
import ARKit

struct ARViewContainer: UIViewRepresentable {
    
    func makeUIView(context: Context) -> ARView {
        let arView = ARView(frame: .zero)
        
        let tapGesture = UITapGestureRecognizer(target: context.coordinator, action: #selector(context.coordinator.addModel))
        arView.addGestureRecognizer(tapGesture)
        
        return arView
    }
    
    func updateUIView(_ uiView: ARView, context: Context) {}
    
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
    
    class Coordinator: NSObject {
        var parent: ARViewContainer
        var hasPlacedModel = false 
        
        init(_ parent: ARViewContainer) {
            self.parent = parent
        }
        
        @objc func addModel(_ sender: UITapGestureRecognizer) {
            let arView = sender.view as! ARView
            
            
            guard !hasPlacedModel else { return }
            
            let tapLocation = sender.location(in: arView)
            let raycastResults = arView.raycast(from: tapLocation, allowing: .estimatedPlane, alignment: .horizontal)
            
            if let firstResult = raycastResults.first {
                
                let modelEntity = try! ModelEntity.load(named: "SolarSystemAR.reality")
                
                let anchorEntity = AnchorEntity(world: firstResult.worldTransform)
                
                anchorEntity.addChild(modelEntity)
                anchorEntity.scale = [0.5,0.5,0.5]
                
                
                arView.scene.addAnchor(anchorEntity)
                
                arView.removeGestureRecognizer(sender)
                hasPlacedModel = true
            }
        }
    }
}

