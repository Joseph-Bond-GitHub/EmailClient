//
//  SwiftMailService.swift
//  EmailClient
//
//  Created by Joseph Bond on 07/09/2026.
//

import Foundation
import SwiftMail
 
//Final dictates that no subclasses of this class can be made. Instead create a new class that implements MailService
//Implements MailService means it must conform to the structure of this protocol - implementing its methods 
final class SwiftMailService: MailService{
    
    var server: IMAPServer = IMAPServer(host: "mail.runbox.com", port: 993, useTLS: true)
        
    //Attempt a connection to the runbox server and attempt to login
    //if there is no errors, allow the user to login. No current error returns of exact errors
    func checkLogin(username: String, password: String) async throws -> Bool {
        try await server.connect()
        try await server.login(username: username, password: password)
        return true
    }
}

