//
//  ContentView.swift
//  XcodeCloudPoC
//
//  Created by Oleksandr Karpenko on 13.06.2025.
//

import SwiftUI

struct ContentView: View {
  var model: ContentViewModeling

  var body: some View {
    VStack {
      Spacer()
      Image(systemName: model.getImageName())
        .imageScale(.large)
        .foregroundStyle(.tint)
      Text(model.getTitle())
        .font(.largeTitle)
      Text(model.getSubTitle())
        .font(.subheadline)
      Spacer()
      Text(model.getVersion())
        .font(.caption)
    }
    .padding()
  }
}

#Preview {
  ContentView(
    model: ContentViewModel(
      imageName: "cloud.sun.rain",
    ),
  )
}
