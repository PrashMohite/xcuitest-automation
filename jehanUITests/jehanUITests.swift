//
//  jehanUITests.swift
//  jehanUITests
//
//  Created by Prashant Mohite on 09/06/21.
//

import XCTest

class jehanUITests: XCTestCase {
    let app = XCUIApplication()

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // UI tests must launch the application that they test.
       
        app.launch()
      
        
        let textField = app.textFields["textfield1"]
        textField.tap()
        textField.typeText("Prashant Mobiquity")
        
        let submitButton = app/*@START_MENU_TOKEN@*/.buttons["submit_button"]/*[[".buttons[\"Submit\"]",".buttons[\"submit_button\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        XCTAssertTrue(submitButton.exists)
        submitButton.tap()
        
        let alert = app.alerts["Welcome Message"]
        let okButton = alert.scrollViews.otherElements.buttons["OK"]
        okButton.tap()
        XCTAssert( app/*@START_MENU_TOKEN@*/.staticTexts["demo label"]/*[[".staticTexts[\"DEMO BY PRASHANT\"]",".staticTexts[\"demo label\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.exists)
        
    
    }

 
}
