//
//  FrameworkGridViewModel.swift
//  AppleFrameworks
//
//  Created by Lucas Santos on 18/09/23.
//

import Foundation

final class FrameworkGridViewModel: ObservableObject {
    var selectedFramework: Framework? {
        didSet {
            isShowingDetailView = true
        }
    }
    
    @Published var isShowingDetailView = false
}
