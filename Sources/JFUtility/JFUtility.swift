//
//  JFLogger.swift
//
//
//  Created by Jonas Frey on 09.06.19.
//

import Foundation

/// Represents a collection of utility functions
struct JFUtility {
    
    /// Executes a shell command using bash and returns the result
    /// - Parameter command: The command to execute using bash
    @discardableResult static public func shell(_ command: String) -> String {
        let task = Process()
        task.launchPath = "/bin/bash"
        task.arguments = ["-c", command]
        
        let pipe = Pipe()
        task.standardOutput = pipe
        task.launch()
        
        let data = pipe.fileHandleForReading.readDataToEndOfFile()
        let output: String = NSString(data: data, encoding: String.Encoding.utf8.rawValue)! as String
        
        return output
    }
    
}
