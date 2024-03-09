//
//  SpaceFlightApp.swift
//  SpaceFlight
//
//  Created by Kyle-Anthony Hay on 3/9/24.
//

import SwiftUI

@main
struct SpaceFlightApp: App {
    
    @State var imersionMode:ImmersionStyle = .full
    
    var body: some Scene {
        
        //Window
        WindowGroup {
            ControlView()
        }
        .defaultSize(width: 10, height: 10)
        .windowStyle(.plain)
        
        //VR
        ImmersiveSpace(id: "ImmersiveSpace") {
            ImmersiveView()
        }.immersionStyle(selection: $imersionMode, in: .full)
    }
}
