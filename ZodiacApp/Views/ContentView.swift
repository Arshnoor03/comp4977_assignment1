//
//  ContentView.swift
//  ZodiacApp
//
//  Created by Taylor Ji on 2023-09-29.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            Text("Zodiac App")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .foregroundStyle(Color.orange)
            TabView(selection: /*@START_MENU_TOKEN@*/.constant(1)/*@END_MENU_TOKEN@*/,
                    content:  {
                HomeView().tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }.tag(1)
                CalculatorView().tabItem {
                    Image(systemName: "pencil.tip")
                    Text("Calculator")
                }.tag(2)
                AboutView().tabItem {
                    Image(systemName: "info.circle.fill")
                    Text("About")
                }.tag(3)
            })
            
        }
        
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
