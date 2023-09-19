//
//  FrameworksGridView.swift
//  AppleFrameworks
//
//  Created by Lucas Santos on 16/09/23.
//

import SwiftUI

struct FrameworksGridView: View {
    @StateObject var viewModel = FrameworkGridViewModel()
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: viewModel.gridColumns, spacing: 30) {
                    ForEach(MockData.frameworks) { framework in
                        FrameworkGridItem(framework)
                            .onTapGesture {
                                viewModel.selectedFramework = framework
                            }
                    }
                }
                .frame(maxWidth: .infinity)
            }
            .navigationTitle("🍎 Frameworks")
            .sheet(isPresented: $viewModel.isShowingDetailView) {
                FrameworkDetailView(framework: viewModel.selectedFramework!)
            }
        }
    }
}

#Preview {
    FrameworksGridView()
}
