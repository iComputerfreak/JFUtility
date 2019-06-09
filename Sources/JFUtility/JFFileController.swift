//
//  JFFileController.swift
//  
//
//  Created by Jonas Frey on 09.06.19.
//

import Foundation

/// Represents a collection of file-related utility functeions
struct JFFileController {
    
    /// Returns the path of the app's Documents directory
    public static func documentsPath() -> String {
        return pathForFilename(filename: "")
    }
    
    /// Returns the path of the apps's Documents directory with the filename appended as path component
    public static func pathForFilename(filename: String) -> String {
        var path = FileManager().urls(for: FileManager.SearchPathDirectory.documentDirectory, in: FileManager.SearchPathDomainMask.userDomainMask).last!.path
        let lastChar: String = String(path.last!)
        path = path.appending(lastChar == "/" ? "\(filename)" : "/\(filename)")
        return path
    }
    
}
