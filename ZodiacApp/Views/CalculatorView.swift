//
//  CalculatorView.swift
//  ZodiacApp
//
//  Created by Taylor Ji on 2023-09-30.
//

import SwiftUI

struct CalculatorView: View {
    @State private var navigate = false
    @State private var userYear: String = ""
    @State private var zodiacData: ZodiacData?
    @State private var zodiacSign: Int? = nil
    @State private var showError: Bool = false
    private var errorMSG: String = "Please enter Valid Year"
    var body: some View {
        NavigationView {
            VStack{
                TextField("Enter a year", text: $userYear)
                                .padding()
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                                .keyboardType(.numberPad)
                Button("Find Zodiac Sign") {
                    if (ZodiacController.isValidYearInput(userInput: userYear)){
                        if let zodiacNum = ZodiacController.findSign(forYear: userYear) {
                            zodiacData = ZodiacModel.data[zodiacNum]
                            
                        }
                    } else {
                        showError = true
                        zodiacData = nil
                    }
                }
                
                if let zodiac = zodiacData {
                    Text(zodiac.name)
                    Image(zodiac.imageUrl)
                } else if (showError) {
                    Text(errorMSG).foregroundColor(.red)
                }
                }
              
            }
            .padding()

            }
}

#Preview {
    CalculatorView()
}
