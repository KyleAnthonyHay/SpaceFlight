//
//  SpaceFlightApp.swift
//  SpaceFlight
//
//  Created by Kyle-Anthony Hay on 3/9/24.
//

import SwiftUI

@main
struct SpaceFlightApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }

        ImmersiveSpace(id: "ImmersiveSpace") {
            ImmersiveView()
        }.immersionStyle(selection: .constant(.progressive), in: .progressive)
    }
}
