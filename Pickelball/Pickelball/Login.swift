//
//  Login.swift
//  Pickelball
//
//  Created by Spencer Jones on 3/29/24.
//

import SwiftUI

struct LoginView: View {
    @State private var username = ""
    @State private var password = ""
    var body: some View {
        VStack{
            Form {
                TextField("Username", text: $username)
                SecureField("Password", text: $password)
                
            }
        }
    }
}

struct SignUpView: View {
    var body: some View {
        Text("Login View")
            .padding()
    }
}

struct Login: View {
    @State private var selectedSegment = 0
    let segments = ["Login", "Sign Up" ]
    
    var body: some View {
        VStack {
            Picker(selection: $selectedSegment, label: Text("")) {
                ForEach(0..<2) { index in
                    Text(segments[index]).tag(index)
                }
            }
            .pickerStyle(SegmentedPickerStyle())
            
            
            
            // Conditional content based on selected segment
            if selectedSegment == 0 {
                // Content for Login segment
                LoginView()
            } else {
                // Content for Sign Up segment
                SignUpView()
            }
        }
    }
}
    

#Preview {
    Login()
}
