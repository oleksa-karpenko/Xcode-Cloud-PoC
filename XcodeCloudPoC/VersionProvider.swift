//
//  VersionProvider.swift
//  XcodeCloudPoC
//
//  Created by Oleksandr Karpenko on 13.06.2025.
//

import Foundation

protocol AppVersionProviding {
    func getAppVersionString() -> String
    func getBuildNumber() -> String
}

struct VersionProvider: AppVersionProviding {
    func getAppVersionString() -> String {
        Bundle.main.object(forInfoDictionaryKey: "CFBundleShortVersionString") as? String ?? "Unknown"
    }
    
    func getBuildNumber() -> String {
        Bundle.main.object(forInfoDictionaryKey: "CFBundleVersion") as? String ?? "?"
    }
}
