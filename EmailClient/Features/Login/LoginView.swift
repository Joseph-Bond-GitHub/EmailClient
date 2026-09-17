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
        Image("RunboxLogo").resizable().frame(width: 300, height: 100, alignment: .center)
        
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
                Task{
                    do{
                        //update var with entered credentials
                        let attempt = try await viewModel.checkDetails()
                        
                        if attempt {
                            isLoggedIn.toggle()
                        }else{
                            //invalid login details, print something to the user about invalid username or password
                            Text("Invalid username or password").alert(isPresented: .constant(true), content: {
                                Alert(title: Text("Invalid login details"))
                            })
                        }
                    } catch {
                        
                    }
                }
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
