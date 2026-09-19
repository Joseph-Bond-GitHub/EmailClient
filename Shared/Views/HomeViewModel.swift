//
//  HomeViewModel.swift
//  EmailClient
//
//  Created by Joseph Bond on 18/09/2026.
//

import Foundation
import Combine

class HomeViewModel: ObservableObject{
    @Published var currentFolder: String
    
    //The default folder selected is always inbox
    init() {
        self.currentFolder = "Inbox"
    }
}

