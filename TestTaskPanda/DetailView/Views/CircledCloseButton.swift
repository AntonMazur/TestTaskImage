//
//  CircledCloseButton.swift
//  TestTaskPanda
//
//  Created by Anton Mazur on 12.02.2024.
//

import SwiftUI

struct CircledCloseButton: View {
    let action: () -> ()
    
    var body: some View {
        Button(action: action) {
            Image(systemName: "xmark")
                .resizable()
                .foregroundColor(.white)
                .padding(10)
        }
        .background(Color.gray)
        .frame(width: 32, height: 32)
        .clipShape(Circle())
        .padding(20)
    }
    
    init(_ action: @escaping () -> Void) {
        self.action = action
    }
}
