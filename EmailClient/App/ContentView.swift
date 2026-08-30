//
//  ContentView.swift
//  EmailClient
//
//  Created by Joseph Bond on 30/08/2026.
//
//I believe this is the root view (i.e. where the buttons to access other views may live)

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
