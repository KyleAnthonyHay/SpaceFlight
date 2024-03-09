//
//  ContentView.swift
//  SpaceFlight
//
//  Created by Kyle-Anthony Hay on 3/9/24.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct ControlView: View {
    
    @Environment(\.openImmersiveSpace) var openImmersiveSpace
    @Environment(\.dismissImmersiveSpace) var closeImmersiveSpace
    var body: some View {
        VStack {
            Button {
                //Present VR World
                Task {
                    await openImmersiveSpace(id: "ImmersiveSpace")
                }
            } label: {
                Image(systemName: "visionpro")
            }
        }
    }
}

#Preview(windowStyle: .automatic) {
    ControlView()
}
