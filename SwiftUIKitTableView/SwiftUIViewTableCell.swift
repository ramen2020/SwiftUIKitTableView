//
//  SwiftUIViewTableCell.swift
//  SwiftUIKitTableView
//
//  Created by 宮本光直 on 2021/07/02.
//

import SwiftUI
import Foundation
import UIKit

struct SwiftUIViewTableCell: View {
    let text: String

    var body: some View {
        HStack(alignment: .center, spacing: 10) {
            VStack(alignment: .leading, spacing: 4) {
                Text(text)
                    .font(.largeTitle)
                Text(text)
                    .font(.caption)
                    .foregroundColor(Color(.gray))
                Text(text)
                    .font(.caption)
                    .foregroundColor(Color(.gray))
            }
            Spacer()
        }
        .padding()
    }
}


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

struct Card2: View {
    
    var body: some View {
        HStack(alignment: .top) {
            Image("ramen1")
                .resizable()
                .scaledToFill()
                .frame(width: 150, height: 150)
                .clipped()
            
            VStack(alignment: .leading) {
                Text("タイトル１")
                    .font(.system(size: 12))
                    .foregroundColor(Color.white)
                    .padding(.all, 4)
                    .background(Color.pink)
                    .padding(.trailing, 8)
                
                Text("タイトル２")
                    .font(.system(size: 14, weight: .semibold))
                    .fixedSize(horizontal: false, vertical: true)
                    .padding(.trailing, 8)
                
                Text("タイトル３")
                    .font(.system(size: 14, weight: .semibold))
                
                HStack(spacing: 0) {
                    Image(systemName: "star.fill")
                        .resizable()
                        .frame(width: 10, height: 10)
                        .foregroundColor(Color.yellow)
                    Text("タイトル４")
                        .font(.system(size: 12))
                        .padding(.leading, 2)
                }
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.top, 10)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(Color.white)
        .cornerRadius(5)
        .background(
            RoundedRectangle(cornerRadius: 10)
                .fill(Color.white)
                .shadow(color: Color.gray, radius: 10, x: 0, y: 0)
        )
        .padding(20)
    }
}
