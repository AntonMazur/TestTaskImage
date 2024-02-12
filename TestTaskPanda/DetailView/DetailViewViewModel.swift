//
//  DetailViewViewModel.swift
//  TestTaskPanda
//
//  Created by Anton Mazur on 12.02.2024.
//

import SwiftUI

final class DetailViewViewModel: ObservableObject {
    @Binding var isPresented: Bool
    
    var view: DetailView {
        DetailView(viewModel: self)
    }
    
    init(isPresented: Binding<Bool>) {
        _isPresented = isPresented
    }
}
