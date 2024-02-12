//
//  DetailView.swift
//  TestTaskPanda
//
//  Created by Anton Mazur on 12.02.2024.
//

import SwiftUI

struct DetailView: View {
    @StateObject var viewModel: DetailViewViewModel
    
    var body: some View {
        GeometryReader { geometry in
            LeftImageView(image: .init(.panda), geometry: geometry, shouldFillWholeScreen: true)
        }
        .ignoresSafeArea()
        .overlay(alignment: .topTrailing) {
            CircledCloseButton {
                withAnimation(.easeInOut) {
                    viewModel.isPresented.toggle()
                }
            }
        }
        .transition(.move(edge: .top))
    }
}

#Preview {
    DetailView(viewModel: .init(isPresented: .constant(false)))
}
