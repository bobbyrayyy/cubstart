//
//  CustomCell.swift
//  Shopping List
//
//  Created by Tony Hong on 3/12/22.
//

import SwiftUI

struct CustomCell: View {
    var imageName: String
    var itemName: String
    var quantity: Int
    
    var body: some View {
        HStack(spacing: 0) {
            Image(imageName).resizable().frame(width: 40, height: 40)
            Text(itemName).padding(50)
            Text(String(quantity))
        }
        
        
    }
}

