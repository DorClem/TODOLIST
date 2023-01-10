// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let task = try? newJSONDecoder().decode(Task.self, from: jsonData)

import Foundation



// MARK: - Taske
class Task: Codable {
    var task, desc, date: String

    init(task: String, desc: String,  date: String) {
        self.task = task
        self.desc = desc
        self.date = date
        
    }
}
