//
//  ControlButton.swift
//  TestTaskPanda
//
//  Created by Anton Mazur on 12.02.2024.
//

import SwiftUI

struct ControlButton: View {
    let text: String
    let action: () -> ()
    
    var body: some View {
        Button(action: action) {
            Text(text)
                .font(.headline)
                .foregroundColor(.white)
                .padding()
                .frame(width: 150, height: 56)
                .background(Color.blue)
                .cornerRadius(18)
                .overlay(
                    RoundedRectangle(cornerRadius: 18)
                        .stroke(Color.indigo, lineWidth: 3)
                )
        }
    }
    
    init(_ text: String, _ action: @escaping () -> Void) {
        self.text = text
        self.action = action
    }
}
