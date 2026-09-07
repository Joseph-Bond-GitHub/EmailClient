//
//  ContentView.swift
//  EmailClient
//
//  Created by Joseph Bond on 30/08/2026.
//
//I believe this is the root view (i.e. where the buttons to access other views may live)

import SwiftUI

struct ContentView: View {
    
    //state means the variable is watched in case it's value changes
    @State public var isLoggedIn: Bool = false
    
    var body: some View {
        
        if isLoggedIn{
            HomeView()
        }else{
            LoginView(viewModel: LoginViewModel(password: "", username: ""), isPasswordVisible: false, isLoggedIn: $isLoggedIn)
        }
    }
}

#Preview {
    ContentView()
}
