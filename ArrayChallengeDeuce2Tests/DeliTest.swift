//
//  DeliTest.swift
//  ArrayChallengeDeuce2
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import XCTest
@testable import ArrayChallengeDeuce2

class DeliTest: XCTestCase {
    
    let deli = Deli()
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testFirstPersonAddedToDeliLine() {
        let firstCustomerGreeting = deli.addNameToLine(name: "Jon Snow")
        let countOfLine = deli.line.count
        
        let expectedFirstCustomerGreeting = "Welcome Jon Snow, you're first in line!"
        let expectedCountOfLine = 1
        
        XCTAssertEqual(firstCustomerGreeting, expectedFirstCustomerGreeting)
        XCTAssertEqual(countOfLine, expectedCountOfLine)
    }
    
    func testBillyCrystalAddedToDeliLine() {
        // Establishing a line with 3 people on it before Billy Crystal walks in.
        deli.line = ["Jess", "Jacob", "Amanda"]
        
        let billyCrystalGreeting = deli.addNameToLine(name: "Billy Crystal")
        let countOfLine = deli.line.count
        let firstPersonInLine = deli.line.first ?? "NO ONE"
        
        let expectedBillyCrystalGreeting = "Welcome Billy Crystal! You can sit wherever you like."
        let expectedCountOfLine = 4
        let expectedFirstPersonInLine = "Billy Crystal"
        
        XCTAssertEqual(billyCrystalGreeting, expectedBillyCrystalGreeting, "incorrect greeting for Billy Crystal")
        XCTAssertEqual(countOfLine, expectedCountOfLine, "incorrect number of people in line, should be 1")
        XCTAssertEqual(firstPersonInLine, expectedFirstPersonInLine, "expecting 'Billy Crystal' to be first in line")
    }
    
    func testMegRyanAddedToDeliLine() {
        // Establishing a line with 5 people on it before Meg Ryan walks in.
        deli.line = ["Jess", "Jacob", "Amanda", "Brick", "Jay-Z"]
        
        let megRyanGreeting = deli.addNameToLine(name: "Meg Ryan")
        let countOfLine = deli.line.count
        let firstPersonInLine = deli.line.first ?? "NO ONE"
        
        let expectedMegRyanGreeting = "Welcome Meg Ryan! You can sit wherever you like."
        let expectedCountOfLine = 6
        let expectedFirstPersonInLine = "Meg Ryan"
        
        XCTAssertEqual(megRyanGreeting, expectedMegRyanGreeting, "incorrect greeting for Meg Ryan")
        XCTAssertEqual(countOfLine, expectedCountOfLine, "incorrect number of people in line, should be 1")
        XCTAssertEqual(firstPersonInLine, expectedFirstPersonInLine, "expecting 'Meg Ryan' to be first in line")
    }
    
    func testNormalPersonAddedToLineWithPeopleAlreadyOnIt() {
        // Establishing a line with 5 people on it before Jim walks in.
        deli.line = ["Rob", "Catherine", "Paul", "Dom", "Tony"]
        
        let jimGreeting = deli.addNameToLine(name: "Jim")
        let countOfLine = deli.line.count
        let lastPersonInLine = deli.line.last ?? "NO ONE"
        
        let expectedJimGreeting = "Welcome Jim, you're number 6 in line."
        let expectedCountOfLine = 6
        let expectedLastPersonInLine = "Jim"
        
        XCTAssertEqual(jimGreeting, expectedJimGreeting, "incorrect greeting for Jim")
        XCTAssertEqual(countOfLine, expectedCountOfLine, "incorrect count of line, should be 6")
        XCTAssertEqual(lastPersonInLine, expectedLastPersonInLine, "incorrect last person in line")
    }
    
    func testNowServing() {
        // Establishing a line of three people before calling on nowServing
        deli.line = ["Frodo", "Bran", "Jessica"]
        
        let servingSentence = deli.nowServing()
        let expectedServingSentence = "Now serving Frodo!"
    
        XCTAssertEqual(deli.line, ["Bran", "Jessica"], "nowServing should remove the first element from the line variable")
        XCTAssertEqual(servingSentence, expectedServingSentence, "Your nowServing function is not returning the right String")
    }
    
    func testNowServingWhenLineIsEmpty() {
        // Line is empty
        let servingSentence = deli.nowServing()
        let expectedServingSentence = "There is no one to be served."
        
        XCTAssertEqual(servingSentence, expectedServingSentence, "When the line is empty, your nowServing function isn't returning the proper String")
    }
    
    func testLineDescription() {
        // Establishing a line with 4 people on it.
        deli.line = ["Rob", "Catherine", "Paul", "Dom"]
        
        let description = deli.lineDescription()
        let expectedDescription = "The line is:\n1. Rob\n2. Catherine\n3. Paul\n4. Dom"
        
        XCTAssertEqual(description, expectedDescription, "lineDescription is not returning back the right String.")
    }
    
    func testLineDescriptionWhenLineIsEmpty() {
        // Empty Line
        let description = deli.lineDescription()
        let expectedDescription = "The line is currently empty."
        
        XCTAssertEqual(description, expectedDescription, "When the line is empty, it should return back 'The line is currently empty.'")
    }

}
