//
//  PrimaryButton.swift
//  AppleFrameworks
//
//  Created by Lucas Santos on 18/09/23.
//

import SwiftUI

struct PrimaryButtonView: View {
    let text: String
    
    var body: some View {
        Text(text)
            .font(.title3)
            .fontWeight(.semibold)
            .frame(width: 280, height: 50)
            .background(.red)
            .foregroundStyle(.white)
            .cornerRadius(10)
    }
}

#Preview {
    PrimaryButtonView(text: "Learn More")
}
