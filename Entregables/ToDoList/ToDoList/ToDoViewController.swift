//
//  ToDoViewController.swift
//  ToDoList
//
//  Created by Ernesto Daniel Mejia Valdiviezo on 06/09/18.
//  Copyright © 2018 Ernesto Daniel Mejia Valdiviezo. All rights reserved.
//

import UIKit

class ToDoViewController: UITableViewController {
    
    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var isCompleteButton: UIButton!
    @IBOutlet weak var dueDatePicker: UIDatePicker!
    @IBOutlet weak var dueDatePickerLabel: UILabel!
    @IBOutlet weak var notesTextView: UITextView!
    @IBOutlet weak var saveButton: UIBarButtonItem!
    
    var isPickerHidden = true
    var todo : ToDo?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let todo = todo {
            navigationItem.title = "To-Do"
            titleTextField.text = todo.title
            isCompleteButton.isSelected = todo.isComplete
            dueDatePicker.date = todo.dueDate
            notesTextView.text = todo.notes
        } else {
            dueDatePicker.date = Date().addingTimeInterval(24*60*60)
        }
        updateDueDateLabel(date: dueDatePicker.date)
        updateSaveButton()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        
        guard segue.identifier == "saveUnwind" else {return}
        let title = titleTextField.text!
        let isComplete = isCompleteButton.isSelected
        let dueDate = dueDatePicker.date
        let notes = notesTextView.text
        
        todo = ToDo(title: title, isComplete: isComplete, dueDate: dueDate, notes: notes)
    }
    
    @IBAction func isCompleteButton(_ sender: UIButton) {
        isCompleteButton.isSelected = !isCompleteButton.isSelected
        print("Selected")
    }
    
    //Método para quitar de la vista el teclado
    @IBAction func returnPressed(_ sender: UITextField) {
        titleTextField.resignFirstResponder()
    }
    
    
    //Método que cambia el estado del botón Save
    @IBAction func textEditingChanged(_ sender: UITextField) {
        updateSaveButton()
    }
    
    func updateSaveButton() {
        let text = titleTextField.text ?? ""
        saveButton.isEnabled = !text.isEmpty
    }
    
    //Método para la fecha
    func updateDueDateLabel(date: Date) {
        dueDatePickerLabel.text = ToDo.dueDateFormatter.string(from: date)
    }
    
    @IBAction func datePickerChanged(_ sender: UIDatePicker) {
        updateDueDateLabel(date: dueDatePicker.date)
    }
    
    
//    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//        let normalCellHeight = CGFloat(44)
//        let largeCellHeight = CGFloat(200)
//
//        switch(indexPath) {
//        case [1,0]: //Due Date Cell
//            return isPickerHidden ? normalCellHeight : largeCellHeight
//        case [2,0]: //Notes Cell
//            return largeCellHeight
//        default:
//            return normalCellHeight
//        }
//    }
//
//    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        switch (indexPath) {
//        case [2,0]:
//            isPickerHidden = !isPickerHidden
//            dueDatePickerLabel.textColor = isPickerHidden ? .black : tableView.tintColor
//            tableView.beginUpdates()
//            tableView.endUpdates()
//        default: break
//        }
//    }
    
}
