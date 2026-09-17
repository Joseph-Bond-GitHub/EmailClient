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
    
    let rbxIMAPDetails: String = "mail.runbox.com:993"
    //Temp
    func checkLogin(username: String, password: String) async throws -> Bool {
        //server.connect()
        return false
    }
}
