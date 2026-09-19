//
//  MailService.swift
//  EmailClient
//
//  Created by Joseph Bond on 30/08/2026.
//

import Foundation

//A protocol is akin to a java interface
//In it you specify methods and paremeters and variables (Variables require { get set }
//swiftMailIMAP implements this protocol
//If the IMAP layer transitions from swiftMail to a custom IMAP servce, you write that fresh as an extension of this (like java extends command)
protocol MailService {
    //var isConnected: Bool { get }        // read-only requirement
    //var currentMailbox: String { get set }  // read-write requirement

    //Temp
    func checkLogin(username: String, password: String) async throws -> Bool
}
