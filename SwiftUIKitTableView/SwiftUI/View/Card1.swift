//
//  Card1.swift
//  SwiftUIKitTableView
//
//  Created by 宮本光直 on 2021/12/29.
//

import SwiftUI

struct Card1: View {
    
    var body: some View {
        VStack(spacing: 0) {
            VStack {
                HStack {
                    Spacer()
                    Button(action: {
                        //
                    }, label: {
                        Image(systemName: "star.fill")
                            .resizable()
                            .frame(width: 25, height: 25)
                            .foregroundColor(Color.yellow)
                    }).padding([.trailing, .top], 10)
                }
                Spacer()
            }
            
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.blue)
            
            VStack(spacing: 8) {
                Text("こんにちわ")
                    .font(.system(size: 15, weight: .semibold))
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                Text("おやすみ")
                    .font(.system(size: 12, weight: .semibold))
                    .foregroundColor(Color.white)
                    .frame(width: 120, height: 30)
                    .background(Color.pink)
                    .frame(maxWidth: .infinity, alignment: .center)
                    .cornerRadius(6)
                
            }
            .foregroundColor(Color.black)
            .padding(10)
            .background(Color.white)
        }
        .frame(width: 200, height: 170)
        .background(Color.white)
        .clipped()
        .cornerRadius(6)
        .shadow(color: Color.gray, radius: 2)
        .padding()
    }
}
