//
//  DetailView.swift
//  ZodiacApp
//
//  Created by Taylor Ji on 2023-09-30.
//

import SwiftUI

struct DetailView: View {
    var data: ZodiacData
    var body: some View {
        
        Text(data.name)
            .font(.title)
            .bold()
        Image(data.imageUrl).padding()
        ScrollView{
            Text(data.description)
                .font(.system(size: 20))
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(.yellow)
            
        }
    }
}

#Preview {
    DetailView(data: ZodiacModel.data[4])
}
