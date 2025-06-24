//
//  ContentView.swift
//  First App
//  Created by Aden Kunvithu Svay on 8/2/24.
// *** see README.md notes about '!' error
//



import SwiftUI



// ContentView is a struct that conforms to the View protocol.
// It acts as a blueprint for what is displayed on the screen.

struct ContentView: View {
    
    // @State initializes values, and updates values upon any changes
    @State var total = ""
    @State var tipPercent = 15.0
    
    // The body is the container and grouping for all the HStacks
    // It defines the full layout
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
        
        // This is the core logic
        // If the user input can be converted to a double...
        // Then user input (totalNum) is multiplied by the number on slider (tipPercent)
        // After proper formatting ("%0.2f")
        // The Tip Amount is displayed
    
        // Is there a cleaner way to perform the arithmetic calculation instead of dividing by 100 ?? ** potential fix **
        
        if let totalNum = Double(total) {
            Text("Tip Amount: $\(totalNum * tipPercent / 100, specifier: "%0.2f")")
        } else {
            Text("Please add a numeric value")
        }
    }
}

// This actually allows our code to be previewed live ->
#Preview {
    ContentView()
}
