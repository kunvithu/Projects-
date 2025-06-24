//
//  ContentView.swift
//  First App
//
//  Created by Aden Kunvithu Svay on 8/2/24.
// *** see README.md notes about '!' error
//

import SwiftUI



// notice how everything is under the struct. Struct has ContentView: View, which at a surface level is everything you can see
struct ContentView: View {
    
    // @State initializes values, but updates values from the slider
    @State var total = ""
    @State var tipPercent = 15.0
    
    // ??
    var body: some View {
        // HStack is a horizontal container
        // This one is for the dollar sign icon in blue
        HStack {
            Image(systemName: "dollarsign.circle.fill")
                .imageScale(.small)
                .foregroundStyle(.tint)
                .font(.title)
            Text("Tip Calculator")
                .font(.largeTitle)
                .fontWeight(.bold)
            
        }
        // This one is for the dollar sign and greyed out text below the previous HStack
        HStack {
            Text("$")
            TextField("Amount", text:$total)
            
        }
        // For the slider and percent incrementation
        HStack{
            Slider(value: $tipPercent, in: 1...30, step: 1.0)
            Text("\(Int(tipPercent))")
            Text("%")
        }
        
        // ??
        if let totalNum = Double(total) {
            Text("Tip Amount: $\(totalNum * tipPercent / 100, specifier: "%0.2f")")
        } else {
            Text("Please add a numeric value")
        }
    }
}

// This function actually allows our code to be displayed live ->
#Preview {
    ContentView()
}
