//
//  ContentView.swift
//  financetracker
//
//  Created by Aden Kunvithu Svay on 7/11/25.
// Start of a new finance tracker app
// Note to self, GUI takes a while to boot up and is flakey. I started a new program and did nothing to the program. Tried to run teh Content View, but nothing displayed until 5-10min later when I magically reappeared. haha

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
