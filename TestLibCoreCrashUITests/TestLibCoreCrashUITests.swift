//
//  TestLibCoreCrashUITests.swift
//  TestLibCoreCrashUITests
//
//  Created by TemporaryAdmin on 16.04.21.
//

import XCTest

class TestLibCoreCrashUITests: XCTestCase {

  func testExample() {
      let application: XCUIApplication = XCUIApplication()
      application.launch()
      EarlGrey.selectElement(with: grey_keyWindow())
        .perform(grey_tap())
    }
}