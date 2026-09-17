//
//  LoginViewModel.swift
//  EmailClient
//
//  Created by Joseph Bond on 30/08/2026.
//

import SwiftUI
import Combine

class LoginViewModel: ObservableObject {
    
    
    // Add your published properties here
    // Example:
    // @Published var isLoading: Bool = false
    // @Published var errorMessage: String?
    
    @Published var password: String
    @Published var username: String
    
    let mailService: SwiftMailService = SwiftMailService()
    
     init(password: String = "", username: String = "") {
        self.password = password
        self.username = username
    }
    
    func checkDetails() async throws -> Bool {
        do{
            // Use values of password and username as their values are held in this file
            return try await mailService.checkLogin(username: username, password: password)
        } catch {
            print("Login Failed: \(error)")
        }
        return false //TEMP
    }
}
