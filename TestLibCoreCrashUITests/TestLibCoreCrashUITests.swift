//
//  TestLibCoreCrashUITests.swift
//  TestLibCoreCrashUITests
//
//  Created by TemporaryAdmin on 16.04.21.
//

import XCTest

func grey_customMatcher() -> GREYMatcher {
  let mathcesBlock: GREYMatchesBlock = { (element: Any) in
    return false
  }
  let descriptionBlock: GREYDescribeToBlock = { $0.appendText("grey_customMatcher") }
  return GREYElementMatcherBlock(matchesBlock: mathcesBlock, descriptionBlock: descriptionBlock)
}

class TestLibCoreCrashUITests: XCTestCase {

  func testExample() {
    var error: NSError?
    let application: XCUIApplication = XCUIApplication()
    application.launch()
    EarlGrey.selectElement(with: grey_accessibilityID("SOME_NONEXISTENT_ID"))
      .assert(grey_customMatcher(), error: &error)
  }
}
