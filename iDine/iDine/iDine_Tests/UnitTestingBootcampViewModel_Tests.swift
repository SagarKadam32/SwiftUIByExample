//
//  UnitTestingBootcampViewModel_Tests.swift
//  iDine_Tests
//
//  Created by Sagar Kadam on 28/09/22.
//

// Naming Structure: test_UnitOfWork_StateUnderTest_ExpectedBehavior
// Naming Structure: test_[struct or class]_[variable or function]_[Expected Result]

// Testing Structure: Given, When, Then

import XCTest
@testable import iDine

class UnitTestingBootcampViewModel_Tests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func test_UnitTestingBootcampViewModel_isPremium_shouldBeTrue() {
        // Given
        let userIsPremium: Bool = true
        
        // When
        let vm = UnitTestingBootcampViewModel(isPremium:userIsPremium)
        
        // Then
        XCTAssertTrue(vm.isPremium)
    }
    
    func test_UnitTestingBootcvampViewModel_isPremium_shouldBeFalse() {
        // Given
        let userIsNotPremium: Bool = false
        
        // When
        let vm = UnitTestingBootcampViewModel(isPremium: userIsNotPremium)
        
        // Then
        XCTAssertFalse(vm.isPremium)
    }

}
