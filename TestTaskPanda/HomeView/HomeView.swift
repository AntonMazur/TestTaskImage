//
//  HomeView.swift
//  TestTaskPanda
//
//  Created by Anton Mazur on 12.02.2024.
//

import SwiftUI

struct HomeView: View {
    @StateObject private var viewModel = HomeViewViewModel()
    
    var body: some View {
        GeometryReader { geometry in
            VStack {
                LeftImageView(image: .init(.panda), geometry: geometry, shouldFillWholeScreen: false)
                
                HStack(spacing: 20) {
                    ControlButton(viewModel.isTopBlocked ? "Unlock" : "Lock") {
                        viewModel.isTopBlocked.toggle()
                    }
                    .frame(maxWidth: .infinity)
                    
                    ControlButton("Open from top") {
                        withAnimation(.easeInOut) {
                            viewModel.isDetailViewPresented.toggle()
                        }
                    }
                    .disabled(viewModel.isTopBlocked)
                    .opacity(viewModel.isTopBlocked ? 0.5 : 1)
                    .frame(maxWidth: .infinity)
                }
                .padding(20)
                
                Spacer()
                
                ControlButton("Open full") {
                    // Not described in tech task
                }
            }
            .padding(.top, 30)
        }
        .overlay {
            if viewModel.isDetailViewPresented {
                DetailViewViewModel(isPresented: $viewModel.isDetailViewPresented).view
            }
        }
    }
}

#Preview {
    HomeView()
}
