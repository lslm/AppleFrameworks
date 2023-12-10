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
        NavigationStack {
            ScrollView {
                LazyVGrid(columns: viewModel.gridColumns, spacing: 30) {
                    ForEach(MockData.frameworks) { framework in
                        NavigationLink(value: framework) {
                            FrameworkGridItem(framework)
                        }
                    }
                }
                .frame(maxWidth: .infinity)
            }
            .navigationTitle("🍎 Frameworks")
            .navigationDestination(for: Framework.self) { framework in
                FrameworkDetailView(framework: framework)
            }
        }
    }
}

#Preview {
    FrameworksGridView()
}
