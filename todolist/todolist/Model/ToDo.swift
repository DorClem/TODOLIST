//
//  ToDo.swift
//  todolist
//
//  Created by Clement Dormois on 16/12/2022.
//

import Foundation


// MARK: - ToDoElement
class ToDoElement: Codable {
    let name, about: String

    init(name: String, about: String) {
        self.name = name
        self.about = about
    }
}

typealias ToDo = [ToDoElement]
