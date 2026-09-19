//
//  InboxView.swift
//  EmailClient
//
//  Created by Joseph Bond on 30/08/2026.
//
//This file will be responsible for the joining of message instances into one list 
import SwiftUI

struct MessageListView: View {
    @StateObject private var viewModel: MessageListViewModel
    
    init(viewModel: MessageListViewModel) {
        _viewModel = StateObject(wrappedValue: viewModel)
    }
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        
        Spacer()
        
        Text("Bottom")
    }
    
}

#Preview {
    MessageListView(viewModel: MessageListViewModel(folder: "Inbox"))
}
