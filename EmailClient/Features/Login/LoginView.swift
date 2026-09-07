//
//  LoginView.swift
//  EmailClient
//
//  Created by Joseph Bond on 30/08/2026.
//

import SwiftUI

struct LoginView: View {
    
    @StateObject var viewModel: LoginViewModel   // owns the lifetime
    @State var isPasswordVisible: Bool //private, default value false
    
    
    @Binding var isLoggedIn: Bool
    
    var body: some View {
        
        VStack {
            
            TextField("Username", text: $viewModel.username)
                .autocorrectionDisabled(true)
            #if os(iOS)
                .textInputAutocapitalization(.never)
            #endif
            
            //Username and password fields
            HStack{
                //Logic for showing password
                if isPasswordVisible {
                    //Binding of $varName allows the variable value to be updated
                    TextField("Password", text: $viewModel.password).autocorrectionDisabled(true)
                }else{
                    SecureField("Password", text: $viewModel.password).autocorrectionDisabled(true)
                }
                
                Button(action: {
                    isPasswordVisible.toggle()
                }){
                    Image(systemName: isPasswordVisible ? "eye" : "eye.slash")
                }
            }
            
            //Login button
            Button(action: {
                //update var with entered credentials
                isLoggedIn = viewModel.checkDetails()
            }){
                Text("Login")
            }
        }.padding()
    }
}


#Preview {
    //set isLoggedIn to false constantly for testing,
    LoginView(viewModel: LoginViewModel(password: "dsa", username: "asd"), isPasswordVisible: true, isLoggedIn: .constant(false))
}
