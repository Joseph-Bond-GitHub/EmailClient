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
    
    //Temp
    func checkLogin(username: String, password: String) -> Bool {
        return true
    }
}
