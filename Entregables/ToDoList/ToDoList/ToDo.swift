//
//  ToDo.swift
//  ToDoList
//
//  Created by Ernesto Daniel Mejia Valdiviezo on 06/09/18.
//  Copyright © 2018 Ernesto Daniel Mejia Valdiviezo. All rights reserved.
//

import Foundation

struct ToDo {
    var title: String
    var isComplete: Bool
    var dueDate: Date
    var notes: String?
    
    static func loadToDos() -> [ToDo]?  {
        return nil
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
