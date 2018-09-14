//
//  ToDo.swift
//  ToDoList
//
//  Created by Ernesto Daniel Mejia Valdiviezo on 06/09/18.
//  Copyright © 2018 Ernesto Daniel Mejia Valdiviezo. All rights reserved.
//

import Foundation

struct ToDo: Codable {
    var title: String
    var isComplete: Bool
    var dueDate: Date
    var notes: String?
    
    static let DocumentsDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
    static let ArchiveURL = DocumentsDirectory.appendingPathComponent("todos").appendingPathExtension("plist")
    
    static func loadToDos() -> [ToDo]?  {
        guard let codedToDos = try? Data(contentsOf: ArchiveURL) else {return nil}
        let propertyListDecoder = PropertyListDecoder()
        return try? propertyListDecoder.decode(Array<ToDo>.self,
            from: codedToDos)
    }
    
    static func saveToDos(_ todos: [ToDo]) {
        let propertyListEncoder = PropertyListEncoder()
        let codedToDos = try? propertyListEncoder.encode(todos)
        try? codedToDos?.write(to: ArchiveURL,options: .noFileProtection)
    }
    
    static func loadSampleToDos() -> [ToDo]{
        let todo1 = ToDo(title: "Homework", isComplete: false, dueDate: Date(), notes: "Description")
        let todo2 = ToDo(title: "Wash the dishes", isComplete: false, dueDate: Date(), notes: "Description")
        let todo3 = ToDo(title: "Clean up your room", isComplete: false, dueDate: Date(), notes: "Description")
        
        return [todo1, todo2, todo3]
    }
    
    static let dueDateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        formatter.timeStyle = .short
        return formatter
        }()
}
