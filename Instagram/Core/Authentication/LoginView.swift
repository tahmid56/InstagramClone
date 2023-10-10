//
//  LoginView.swift
//  Instagram
//
//  Created by Tahmid Akter on 10/10/23.
//

import SwiftUI

struct LoginView: View {
    @State private var email: String = ""
    @State private var password: String = ""
    var body: some View {
        NavigationStack{
            VStack{
                Spacer()
                //logo image
                Image("instagram")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 220, height: 100)
                //text fields
                VStack{
                    TextField("Enter your email", text: $email)
                        .textInputAutocapitalization(.none)
                        .font(.subheadline)
                        .padding(12)
                        .background(Color(.systemGray6))
                        .cornerRadius(10)
                        .padding(.horizontal, 24)
                    
                    TextField("Enter your password", text: $password)
                        .font(.subheadline)
                        .padding(12)
                        .background(Color(.systemGray6))
                        .cornerRadius(10)
                        .padding(.horizontal, 24)
                }
                
                Button{
                    print("Show forget password")
                } label: {
                    Text("Forget Password?")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .padding(.top)
                        .padding(.trailing, 28)
                }
                .frame(maxWidth: .infinity, alignment: .trailing)
                
                Button{
                    print("Log in")
                } label: {
                    Text("Login")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .frame(width: 360, height: 44)
                        .background(Color(.systemBlue))
                        .cornerRadius(8)
                }
                .padding(.vertical)
                
                HStack{
                    Rectangle()
                        .frame(width: (UIScreen.main.bounds.width / 2) - 40, height: 0.5)
                        
                    Text("OR")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        
                    Rectangle()
                        .frame(width: (UIScreen.main.bounds.width / 2) - 40, height: 0.5)
                        
                }
                .foregroundColor(.gray)
                
                HStack{
                    Image("facebook")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 20, height: 20)
                    
                    Text("Continue with Facebook")
                        .font(.footnote)
                        .fontWeight(.bold)
                        .foregroundColor(Color(.systemBlue))
                }
                .padding(.top, 8)
                
                Spacer()
                
                Divider()
                NavigationLink {
                    Text("SIgn Up")
                } label: {
                    HStack(spacing: 3){
                     Text("Don't have an Account?")
                     Text("Sign Up")
                    }
                    .font(.footnote)
                }.padding(.vertical, 16)

            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
