//
//  ContentViewModelTests.swift
//  XcodeCloudPoC
//
//  Created by Oleksandr Karpenko on 13.06.2025.
//

import Testing
@testable import XcodeCloudPoC

struct ContentViewModelTests {
    @Test
    func testDefaultValues() {
        let viewModel = ContentViewModel()
        #expect(viewModel.getImageName() == "cloud.sun.rain")
        #expect(viewModel.getTitle() == "Hello, world!")
        #expect(viewModel.getSubTitle() == "Playing with the Xcode Cloud!")
    }
    
    @Test
    func testCustomValues() {
        let viewModel = ContentViewModel(
            imageName: "custom.image",
            titleText: "Welcome",
            subtitleText: "Custom subtitle"
        )
        #expect(viewModel.getImageName() == "custom.image")
        #expect(viewModel.getTitle() == "Welcome")
        #expect(viewModel.getSubTitle() == "Custom subtitle")
    }
    
    @Test
    func testVersionFormat() {
        let versionProvider = MockVersionProvider(version: "3.4.5", buildNumber: "42")
        let viewModel = ContentViewModel(versionProvider: versionProvider)
        let version = viewModel.getVersion()
        #expect(version == "Version: 3.4.5 (build 42)")
        #expect(version.starts(with: "Version:"))
        #expect(version.contains("("))
        #expect(version.contains(")"))
    }
}
