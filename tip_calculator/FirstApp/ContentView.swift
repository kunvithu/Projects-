//
//  ContentView.swift
//  First App
//
//  Created by Aden Kunvithu Svay on 8/2/24.
// *** see README.md notes about '!' error
//

import SwiftUI



struct ContentView: View {
    
    // @State initializes values, but updates values from the slider
    @State var total = ""
    @State var tipPercent = 15.0
    var body: some View {
        // HStack is a horizontal container
        HStack {
            Image(systemName: "dollarsign.circle.fill")
                .imageScale(.small)
                .foregroundStyle(.tint)
                .font(.title)
            Text("Tip Calculator")
                .font(.largeTitle)
                .fontWeight(.bold)
            
        }
        HStack {
            Text("$")
            TextField("Amount", text:$total)
            
        }
        HStack{
            Slider(value: $tipPercent, in: 1...30, step: 1.0)
            Text("\(Int(tipPercent))")
            Text("%")
        }
        if let totalNum = Double(total) {
            Text("Tip Amount: $\(totalNum * tipPercent / 100, specifier: "%0.2f")")
        } else {
            Text("Please add a numeric value")
        }
    }
}

#Preview {
    ContentView()
}
