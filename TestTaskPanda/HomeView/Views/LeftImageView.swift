//
//  LeftImageView.swift
//  TestTaskPanda
//
//  Created by Anton Mazur on 12.02.2024.
//

import SwiftUI

struct LeftImageView: View {
    let image: Image
    let geometry: GeometryProxy
    let shouldFillWholeScreen: Bool
    
    var body: some View {
        Image(.panda)
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: shouldFillWholeScreen ? nil : 150, 
                   height: shouldFillWholeScreen ? nil : geometry.size.height * 0.3,
                   alignment: .leading)
            .clipped()
    }
}
