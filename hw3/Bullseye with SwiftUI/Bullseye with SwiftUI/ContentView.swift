//
//  ContentView.swift
//  Bullseye with SwiftUI
//
//  Created by Tony Hong on 2/17/22.
//

import SwiftUI

struct ContentView: View {
    @State var num: Double = 50
    @State var toggle = false
    @State private var showGreeting = false
    
    var body: some View {
        VStack() {
            HStack() {
                VStack() {
                    Text("High Score")
                    Text("0")
                }
                .padding(.leading, 20)
                .padding(.top, 30)
                
                
                Spacer()
                
                VStack() {
                    Text("Current Level")
                    Text("1")
                }
                .padding(.leading, 50)
                .padding([.top, .trailing], 20)
            }
            
            Spacer()
            
            VStack() {
                Text("Move the slider to:")
                Text("25")
            }
            .multilineTextAlignment(.center)
            .padding(.top, 70)
//            .padding(.bottom, 200)
            .font(.system(size: 30))
            
            Slider(value: $num, in: 0...100)
            
            Button("Check", action: {print("Checking")})
            
            Spacer()
            
            Text("Exact Mode")
            Toggle("Exact Mode", isOn: $showGreeting).labelsHidden()

            if showGreeting {
                Text("")
            }
            


        }
    }
}
