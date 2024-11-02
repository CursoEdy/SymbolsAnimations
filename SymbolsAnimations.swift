//
//  SymbolsAnimations.swift
//  SymbolsAnimations
//
//  Created by ednardo alves on 02/11/24.
//

import SwiftUI

struct SymbolsAnimations: View {

    @State private var clicked: Bool = false
    
    var body: some View {
        VStack {
            //symbols
            HStack {
                Image(systemName: "moon.stars")
                    .imageScale(.large)
                    .symbolEffect(.bounce, value: clicked)
                    .padding()
                
                Image(systemName: "heart")
                    .imageScale(.large)
                    .symbolEffect(.bounce, options: .repeat(4).speed(2) , value: clicked)
                    .padding()
                    .foregroundStyle( clicked ? .red : .black)
                
                Image(systemName: clicked ? "trash" : "trash.slash")
                    .imageScale(.large)
                    .symbolEffect(.pulse, value: clicked)
                    .foregroundStyle(clicked ? .black.opacity(0.5) : .black)
                    .padding()
            }
            
            //buttons
            Button(action: {
                clicked.toggle()
            }, label: {
                Text("Clique em mim")
                    .font(.title)
                    .fontWeight(.thin)
                    .padding(.vertical, 5)
                    .padding(.horizontal, 15)
                    .background(RoundedRectangle(cornerRadius: 10).fill(.black.opacity(0.1))
                    )
            })
        }
    }
}

#Preview {
    SymbolsAnimations()
}
