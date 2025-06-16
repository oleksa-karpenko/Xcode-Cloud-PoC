//
//  TheApp.swift
//  XcodeCloudPoC
//
//  Created by Oleksandr Karpenko on 13.06.2025.
//

import SwiftUI

@main
struct TheApp: App {
  var body: some Scene {
    WindowGroup {
      ContentView(
        model: ContentViewModel(
          imageName: "cloud.sun.rain",
        ),
      )
    }
  }
}
