//
//  ZodiacCalculationController.swift
//  ZodiacApp
//
//  Created by Taylor Ji on 2023-09-30.
//

import Foundation



class ZodiacController {
    static func findSign(forYear year: String) -> Int? {
        guard let yearNumber = Int(year), year.count == 4 else {
            return -1
        }
        return yearNumber % 12
    }
    
    static func sheetContent(zodiacSign: Int) -> DetailView {
        var zodiacDetailView: DetailView
        if (zodiacSign == -1) {
            zodiacDetailView = DetailView(data: ZodiacModel.data[0])
        } else {
            zodiacDetailView = DetailView(data: ZodiacModel.data[zodiacSign])
        }
      
        return zodiacDetailView
    }
    
    static func isValidYearInput(userInput: String) -> Bool{
        return Int(userInput) != nil && userInput.count == 4
    }
}
