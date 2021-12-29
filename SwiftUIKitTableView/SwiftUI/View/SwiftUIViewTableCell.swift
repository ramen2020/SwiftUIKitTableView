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
