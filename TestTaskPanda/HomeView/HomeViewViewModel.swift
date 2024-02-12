//
//  HomeViewViewModel.swift
//  TestTaskPanda
//
//  Created by Anton Mazur on 12.02.2024.
//

import SwiftUI

final class HomeViewViewModel: ObservableObject {
    @Published var isTopBlocked = false
    @Published var isDetailViewPresented = false
}
