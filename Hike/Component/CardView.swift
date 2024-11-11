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
            
            VStack {
                // MARK - HEADER
                
                VStack(alignment: .leading) {
                    HStack {
                        Text("Hiking").fontWeight(.black).font(.system(size: 52)).foregroundStyle(LinearGradient(colors: [.customGrayLight, .customGrayMedium], startPoint: .top, endPoint: .bottom))
                        
                        Spacer()
                        
                        Button {
                            // ACTION - SHOW A SHEET
                            print("The button was pressed")
                        } label: {
                            CustomButtonView()
                        }
                    }
                    
                    
                    Text("Fun and enjoyable outdoor activity for friends and families.").multilineTextAlignment(.leading).italic().foregroundColor(.customGrayMedium)
                }.padding(.horizontal, 30)
                
                // MARK - MAIN CONTENT
                
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
                
                // MARK - FOOTER
                
            }
            
            
        }
        .frame(width: 320, height: 570)
    }
}

#Preview {
    CardView()
}
