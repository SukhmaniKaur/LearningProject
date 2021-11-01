//
//  AppEnums.swift
//  LearningProject
//
//  Created by MACBOOK on 01/11/21.
//

import Foundation

//MARK: - TABLE_VIEW_CELL
enum TABLE_VIEW_CELL: String {
    case HeaderCell, TableViewCell
}

//MARK: - HEADER_INFO
enum HEADER_INFO: String, CaseIterable {
    case alphabets = "Alphabets"
    case numbers = "Numbers"
}

//MARK: - ALAPHABET_CONTENT
enum ALAPHABET_CONTENT: String, CaseIterable {
    case option1 = "A"
    case option2 = "B"
    case option3 = "D"
    case option4 = "E"
    case option5 = "F"
}

//MARK: - NUMBER_CONTENT
enum NUMBER_CONTENT: String, CaseIterable {
    case one = "1"
    case two = "2"
    case three = "3"
    case four = "4"
    case five = "5"
    case six = "6"
}
