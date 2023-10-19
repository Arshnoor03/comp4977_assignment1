//
//  HomeView.swift
//  ZodiacApp
//
//  Created by Taylor Ji on 2023-09-30.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack {
            NavigationView {
                List (ZodiacModel.data, id: \.id){ item in
                    HStack {
                        Image(item.imageUrl)
                            .resizable()
                            .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                            .frame(width: 50, height: 50)
                        NavigationLink(item.name, destination: DetailView(data: item))
                    }
                    
                }
            }
         
            
        }
        .padding()

    }
}

#Preview {
    HomeView()
}
