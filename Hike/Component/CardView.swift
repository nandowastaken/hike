//
//  CardView.swift
//  Hike
//
//  Created by Fernando Jorge on 10/11/24.
//

import SwiftUI

struct CardView: View {
    var body: some View {
        ZStack {
            CustomBackgroundView()
            
            ZStack {
                Circle()
                    .fill(
                        LinearGradient(
                            colors: [.customIndigoMedium, .customSalmonLight],
                            startPoint: .top,
                            endPoint: .bottom
                    )).frame(width: 256, height: 256)
                
                Image("image-1")
                    .resizable()
                    .scaledToFit()
            }
        }
        .frame(width: 320, height: 570)
    }
}

#Preview {
    CardView()
}
