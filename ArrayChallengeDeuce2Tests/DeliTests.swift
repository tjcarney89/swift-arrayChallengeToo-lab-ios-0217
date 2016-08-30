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
        
        describe("nowServing()") {
            it("Should remove the first name in the line.") {
                
                // Establishing a line with 3 people on it before Rob is called.
                testVC.deliLine = ["Rob", "Catherine", "Paul"]
                
                testVC.nowServing()
                
                let servedLine = testVC.deliLine
                
                let expextedLine = ["Catherine", "Paul"]
                
                expect(servedLine).to(equal(expextedLine))
                
            }
        }
        
        describe("nowServing()") {
            it("Should remove one name each time it is called.") {
                
                // Establishing a line with 3 people on it before nowServing() is called twice.
                testVC.deliLine = ["Rob", "Catherine", "Paul"]
                
                let startingCountOfLine = testVC.deliLine.count
                
                testVC.nowServing()
                testVC.nowServing()
                
                let endingCountOfLine = testVC.deliLine.count
                let countDifference = startingCountOfLine - endingCountOfLine
                
                expect(countDifference).to(equal(2))
                
            }
        }
        
        describe("nowServing()") {
            it("Should return the correct customer name.") {
                
                // Establishing a line with 3 people on it before Rob is called.
                testVC.deliLine = ["Rob", "Catherine", "Paul"]
                
                let servingRob = testVC.nowServing()
                
                let expectedRob = "Now serving Rob!"
                
                expect(servingRob).to(equal(expectedRob))
                
            }
        }
        
        describe("nowServing()") {
            it("Should return the appropriate string if the line is empty.") {
                
                // Establishing a line with 3 people on it before Rob is called.
                testVC.deliLine = []
                
                let servingNoOne = testVC.nowServing()
                
                let expectedNoOne = "There is no one to be served."
                
                expect(servingNoOne).to(equal(expectedNoOne))
                
            }
        }
        
        describe("deliLineDescription()") { 
            it("Should return the appropriate description with names of customers.") {
                
                // Establishing a line with 4 people on it before .
                testVC.deliLine = ["Rob", "Catherine", "Paul", "Dom"]
                
                let description = testVC.deliLineDescription()
                
                let expectedDescription = "The line is:\n1. Rob\n2. Catherine\n3. Paul\n4. Dom"
                
                expect(description).to(equal(expectedDescription))
                
            }
        }
        
        describe("deliLineDescription()") {
            it("Should return the appropriate description when the line is empty.") {
                
                // Establishing a line with 4 people on it before .
                testVC.deliLine = []
                
                let emptyDescription = testVC.deliLineDescription()
                
                let expectedEmptyDescription = "The line is currently empty."
                
                expect(emptyDescription).to(equal(expectedEmptyDescription))
                
            }
        }
        
    }
}
