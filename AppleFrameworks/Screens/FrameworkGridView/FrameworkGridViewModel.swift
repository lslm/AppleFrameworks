//
//  FrameworkGridViewModel.swift
//  AppleFrameworks
//
//  Created by Lucas Santos on 18/09/23.
//

import SwiftUI

final class FrameworkGridViewModel: ObservableObject {
    var selectedFramework: Framework? {
        didSet {
            isShowingDetailView = true
        }
    }
    
    let gridColumns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    @Published var isShowingDetailView = false
}
