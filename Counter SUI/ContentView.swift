//
//  ContentView.swift
//  Counter SUI
//
//  Created by Ilya Grishanov on 07.12.2024.
//

import SwiftUI

struct ContentView: View {
   
    @State private var count = 0
    
    var body: some View {
            Text("Значение счетчика: \(count)")
                .font(.title)
          
        HStack (spacing: 10) {
            Button(action: {
                count += 1
            }) {
                Text("Плюсани")
                    .font(.headline)
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(8)
            }
            
            Button(action: {
                count = 0
            }) {
                Text("Обнули")
                    .font(.headline)
                    .padding()
                    .background(Color.green)
                    .foregroundColor(.white)
                    .cornerRadius(8)
            }
            
            Button(action: {
                count -= 1
            }) {
                Text("Минусани")
                    .font(.headline)
                    .padding()
                    .background(Color.red)
                    .foregroundColor(.white)
                    .cornerRadius(8)
            }
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
