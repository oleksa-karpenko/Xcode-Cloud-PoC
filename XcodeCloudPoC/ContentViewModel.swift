//
//  ContentViewModel.swift
//  XcodeCloudPoC
//
//  Created by Oleksandr Karpenko on 13.06.2025.
//

import Foundation

protocol ContentViewModeling {
    func getImageName() -> String
    func getTitle() -> String
    func getSubTitle() -> String
    func getVersion() -> String
}


final class ContentViewModel: ContentViewModeling {
    private var imageName: String
    private var titleText: String
    private var subtitleText: String
    private let versionProvider: AppVersionProviding
    
    public init(
        imageName: String = "cloud.sun.rain",
        titleText: String = "Hello, world!",
        subtitleText: String = "Playing with the Xcode Cloud!",
        versionProvider: AppVersionProviding = VersionProvider()
    ) {
        self.imageName = imageName
        self.titleText = titleText
        self.subtitleText = subtitleText
        self.versionProvider = versionProvider
    }
    
    public func getImageName() -> String {
        return imageName
    }
    
    public func getTitle() -> String {
        return titleText
    }
    
    public func getSubTitle() -> String {
        return subtitleText
    }
    
    public func getVersion() -> String {
        return "Version: \(versionProvider.getAppVersionString()) (build \(versionProvider.getBuildNumber()))"
    }
}
