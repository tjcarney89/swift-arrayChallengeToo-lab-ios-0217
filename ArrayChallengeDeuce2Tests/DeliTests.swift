//
//  DeliTests.swift
//  ArrayChallengeDeuce2
//
//  Created by Jim Campagno on 8/8/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//



import Quick
import Nimble
@testable import ArrayChallengeDeuce2

class DeliSpec: QuickSpec {
    override func spec() {
        
        // Tests for the ViewController.swift file
        
        let testVC = ViewController()
        
        describe("addNameToDeliLine(_:)") {
            it("Should add the provided name to the deliLine property on the ViewController and return back the appropriate greeting. The count of the line should reflect the newly added name.") {
                
                let actualGreeting = testVC.addNameToDeliLine("Jon Snow")
                let actualCountOfLine = testVC.deliLine.count
                
                let expectedGreeting = "Welcome Jon Snow, you're first in line!"
                let expectedCountOfLine = 1
                
                expect(actualGreeting).to(equal(expectedGreeting))
                expect(actualCountOfLine).to(equal(expectedCountOfLine))
                
            }
        }
        
        describe("Adding Billy Crystal to the line") {
            it("Should perform the appropriate actions (according to the instructions) when Billy Crystal walks into the Deli") {
                
                // Establishing a line with 3 people on it before Billy Crystal walks in.
                testVC.deliLine = ["Jess", "Jacob", "Amanda"]
                
                let billyCrystalGreeting = testVC.addNameToDeliLine("Billy Crystal")
                let actualCountOfLine = testVC.deliLine.count
                let firstPersonInLine = testVC.deliLine[0]
                
                let expectedBillyCrystalGreeting = "Welcome Billy! You can sit wherever you like."
                let expectedCountOfLine = 4
                let expectedFirstPersonInLine = "Billy Crystal"
                
                expect(billyCrystalGreeting).to(equal(expectedBillyCrystalGreeting))
                expect(actualCountOfLine).to(equal(expectedCountOfLine))
                expect(firstPersonInLine).to(equal(expectedFirstPersonInLine))
                
            }
        }
        
        describe("Normal person walking into the deli") {
            it("Should perform the approrpiate actions (according to the instructions) when someone walks into the deli") {
                
                // Establishing a line with 4 people on it before Jim walks in.
                testVC.deliLine = ["Rob", "Catherine", "Paul", "Dom"]
                
                let jimGreeting = testVC.addNameToDeliLine("Jim")
                let countOfLine = testVC.deliLine.count
                let lastPersonInLine = testVC.deliLine.last!
                
                let expectedJimGreeting = "Welcome Jim, you're number 5 in line."
                let expectedCountOfLine = 5
                let expectedLastPersonInLine = "Jim"
                
                expect(jimGreeting).to(equal(expectedJimGreeting))
                expect(countOfLine).to(equal(expectedCountOfLine))
                expect(lastPersonInLine).to(equal(expectedLastPersonInLine))
                
            }
        }
    }
}