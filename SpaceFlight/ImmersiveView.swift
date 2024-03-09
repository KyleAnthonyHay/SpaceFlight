//
//  ImmersiveView.swift
//  SpaceFlight
//
//  Created by Kyle-Anthony Hay on 3/9/24.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct ImmersiveView: View {
    var body: some View {
        RealityView { content in
            //Skybox Entity
            guard let skyBoxEntity = createSkyBox() else {
                print("Error Loading Skybox Entity") 
                return
            }
            //add to RealityView
            content.add(skyBoxEntity)
        }
        
        
    }
    
    private func createSkyBox () -> Entity? {
        //Mesh
        let largeSphere = MeshResource.generateSphere(radius: 1000)
        //Material
        var skyBoxMaterial = UnlitMaterial()
        do {
            let texture = try TextureResource.load(named: "StarryNight")
            skyBoxMaterial.color = .init(texture: .init(texture))
        }catch {
            print("Error Loading Texture: \(error)")
        }
        
        //Skybox Entity
        let skyboxEntity = Entity()
        skyboxEntity.components.set(
            ModelComponent(mesh: largeSphere,
                           materials: [skyBoxMaterial])
        )
        skyboxEntity.scale *= .init(x: -1, y: 1, z: 1)//insert entity
        return skyboxEntity
    }
}

#Preview(immersionStyle: .progressive) {
    ImmersiveView()
}
