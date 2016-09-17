//
//  Deli.swift
//  ArrayChallengeDeuce2
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//




class Deli {
    
    var line: [String] = []
    
    // 1
    func addNameToLine(name: String) -> String {
                
        switch name {
        case "Billy Crystal", "Meg Ryan":
            line.insert(name, at: 0)
            return "Welcome \(name)! You can sit wherever you like."
        default:
            line.append(name)
            if line.count == 1 { return "Welcome \(name), you're first in line!" }
            return "Welcome \(name), you're number \(line.count) in line."
        }
        
    }
    
    // 2
    func nowServing() -> String {
        
        if line.isEmpty { return "There is no one to be served." }
        
        let person = line.removeFirst()
        
        return "Now serving \(person)!"
        
    }
    
    // 3
    func lineDescription() -> String {
        
        if line.isEmpty { return "The line is currently empty." }
        
        var lineDescription = "The line is:\n"
        
        for (index, person) in line.enumerated() {
            if index == (line.count - 1) {
                lineDescription += "\(index + 1). \(person)"
            } else {
                lineDescription += "\(index + 1). \(person)\n"
            }
        }
        
        return lineDescription
        
    }
    
}
