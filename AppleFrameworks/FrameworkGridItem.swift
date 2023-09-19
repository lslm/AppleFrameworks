//
//  FrameworkGridItem.swift
//  AppleFrameworks
//
//  Created by Lucas Santos on 16/09/23.
//

import SwiftUI

struct FrameworkGridItem: View {
    let framework: Framework
    
    init(_ framework: Framework) {
        self.framework = framework
    }
    
    var body: some View {
        VStack {
            Image(framework.imageName)
                .resizable()
                .scaledToFit()
                .frame(width: 80)
            
            Text(framework.name)
                .font(.title3)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.6)
                .foregroundStyle(.primary)
        }
        .padding()
    }
}

#Preview {
    FrameworkGridItem(Framework(name: "ARKit",
                                imageName: "arkit",
                                urlString: "https://developer.apple.com/augmented-reality/arkit",
                                description: "teste"))
}
