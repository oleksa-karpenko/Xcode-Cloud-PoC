//
//  XcodeCloudPoCTests.swift
//  XcodeCloudPoCTests
//
//  Created by Oleksandr Karpenko on 13.06.2025.
//

import Testing
@testable import XcodeCloudPoC

struct XcodeCloudPoCTests {
  @Test func example() async throws {
    #expect((0 ..< 6).reduce(0) { sum, _ in sum + 7 } == 42)
  }
}
