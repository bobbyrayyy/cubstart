//
//  ContentView.swift
//  Shopping List
//
//  Created by Tony Hong on 3/11/22.
//

import SwiftUI

//struct CustomCell: View {
//    var imageName: String
//    var itemName: String
//    var quantity: Int
//
//    var body: some View {
//        Text("Hello World")
//    }
//}

class Items: Identifiable {
    let imageName: String
    let itemName: String
    let quantity: Int
    
    init(imageName: String, itemName: String, quantity: Int) {
        self.imageName = imageName
        self.itemName = itemName
        self.quantity =  quantity
    }
}

struct ContentView: View {
    
    var list = [
        Items(imageName: "banana", itemName: "Bananas", quantity: 3),
        Items(imageName: "apple", itemName: "Apples", quantity: 4),
        Items(imageName: "eggs", itemName: "Eggs", quantity: 12)
    ]
    
    var list2 = [
        Items(imageName: "shoes", itemName: "Shoes", quantity: 23),
        Items(imageName: "tshirt", itemName: "Tshirt", quantity: 41),
        Items(imageName: "jeans", itemName: "Jeans", quantity: 132)
    ]
    
    var list3 = [
        Items(imageName: "coke", itemName: "Coke", quantity: 3),
        Items(imageName: "pepsi", itemName: "Pepsi", quantity: 4),
        Items(imageName: "sprite", itemName: "Sprite", quantity: 12)
    ]
    
    var body: some View {
        NavigationView {
            List {
                Section(header: Text("Fruits")) {
                    ForEach(list) { i in
                        CustomCell(imageName: i.imageName, itemName: i.itemName, quantity: i.quantity)
                        }.navigationTitle("Shopping List")
                }
                
            }
        }
        NavigationView {
            List {
                Section(header: Text("Clothes")) {
                    ForEach(list2) { i in
                        CustomCell(imageName: i.imageName, itemName: i.itemName, quantity: i.quantity)
                        }
                }
                
            }
        }
        NavigationView {
            List {
                Section(header: Text("Drinks")) {
                    ForEach(list3) { i in
                        CustomCell(imageName: i.imageName, itemName: i.itemName, quantity: i.quantity)
                        }
                }
                
            }
        }
    }
}
