//
//  Export.swift
//  Rose-Questionnaire
//
//  Created by Leon Nissen on 01.05.23.
//

import Foundation

enum Helper {
    static func convertToCSV(_ data: [String: String]) -> String {
        var csvString = "question,answer\n"

        for element in data {
            csvString += "\(element.key),\(element.value)\n"
        }

        return csvString
    }
}
