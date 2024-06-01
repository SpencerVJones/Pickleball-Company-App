//  PrizeView.swift
//  Pickelball
//  Created by Spencer Jones on 4/5/24.

import SwiftUI

struct PrizeView: View {
    let title: String
    let amount: String
    let color: Color
    
    var body: some View {
        VStack {
            Text(title)
                .font(.title)
                .foregroundColor(color)
                .padding(.bottom, 5)
            Text(amount)
                .font(.subheadline)
                .multilineTextAlignment(.center)
                .foregroundColor(.secondary)
        }
    }
}
