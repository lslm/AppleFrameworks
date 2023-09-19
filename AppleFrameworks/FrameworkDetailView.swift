//
//  FramewordDetailView.swift
//  AppleFrameworks
//
//  Created by Lucas Santos on 18/09/23.
//

import SwiftUI

struct FrameworkDetailView: View {
    @Environment(\.dismiss) var dismiss
    @State private var isShowingSafariView = false
    let framework: Framework
    
    var body: some View {
        NavigationView {
            ZStack {
                ScrollView {
                    VStack {
                        Spacer()
                        Image(framework.imageName)
                            .resizable()
                            .scaledToFit()
                            .frame(height: 120)
                        
                        Text(framework.name)
                            .font(.title2)
                            .bold()
                            .padding(.top, 16)
                        
                        Text(framework.description)
                            .font(.body)
                            .padding(.top, 40)
                            .foregroundColor(.secondary)
                    }
                    .toolbar {
                        Button {
                            dismiss()
                        } label: {
                            Text("Done")
                                .foregroundStyle(Color.primary)
                        }
                    }
                    .padding()
                }
                .safeAreaPadding(.bottom, 80)
                
                VStack {
                    Spacer()
                    
                    ZStack {
                        Rectangle()
                            .fill(.ultraThinMaterial)
                            .ignoresSafeArea()
                            .frame(maxHeight: 80)
                            
                        Button {
                            isShowingSafariView = true
                        } label: {
                            PrimaryButtonView(text: "Learn More")
                        }
                    }
                    .fullScreenCover(isPresented: $isShowingSafariView) {
                        SafariView(url: URL(string: framework.urlString)!)
                            .ignoresSafeArea()
                    }
                }
            }
        }
    }
}

#Preview {
    FrameworkDetailView(
        framework: MockData.sampleFramework
    )
}
