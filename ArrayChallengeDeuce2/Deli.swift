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
        var statement = ""
        if name == "Billy Crystal" {
            line.insert("Billy Crystal", at: 0)
        } else if name == "Meg Ryan" {
            line.insert("Meg Ryan", at: 0)
        } else {
            line.append("\(name)")
        }
        
        for (index, name) in line.enumerated() {
            if line[0] == "Billy Crystal" {
                statement = "Welcome Billy Crystal! You can sit wherever you like."
            } else if line[0] == "Meg Ryan" {
                statement = "Welcome Meg Ryan! You can sit wherever you like."
            } else if name == line[0] {
                statement = "Welcome \(name), you're first in line!"
            } else {
                statement = "Welcome \(name), you're number \(index + 1) in line."
            }
        }; print(line)
        return statement
        
    }
    

    
    // 2
    func nowServing() -> String {
        var serving = ""
        if line.isEmpty {
            serving = "There is no one to be served"
        } else {
            serving = "Now serving \(line[0])!"
        }; line.remove(at: 0)
        return serving

    }
    
    
    // 3
    func lineDescription() -> String {
        var status = "The line is:"
        if line.isEmpty {
            status = "The line is currently empty."
        } else {
            for (index, line) in line.enumerated() {
                status += "\n\(index + 1). \(line)"
        }
        
    };  print(status)
        return status
    
    }
}
