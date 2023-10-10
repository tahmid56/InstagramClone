//
//  CreatePasswordView.swift
//  Instagram
//
//  Created by Tahmid Akter on 10/10/23.
//

import SwiftUI

struct CreatePasswordView: View {
    @State private var password: String = ""
    @Environment(\.dismiss) var dismiss
    var body: some View {
        VStack{
            Text("Create a password")
                .font(.title2)
                .fontWeight(.bold)
                .padding(.top)
            Text("Your password must be at least 8 characters in length")
                .font(.footnote)
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .padding(.horizontal)
            SecureField("Password", text: $password)
                .textInputAutocapitalization(.none)
                .modifier(IGTextFieldModifier())
            
            NavigationLink {
                CreateUserNameView()
            } label: {
                Text("Next")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .frame(width: 360, height: 44)
                    .background(Color(.systemBlue))
                    .cornerRadius(8)
            }
            .padding(.vertical)
            
            Spacer()
        }
        .toolbar{
            ToolbarItem(placement: .navigationBarLeading){
                Image(systemName: "chevron.left")
                    .imageScale(.large)
                    .onTapGesture {
                        dismiss()
                    }
            }
        }
    }
}

struct CreatePasswordView_Previews: PreviewProvider {
    static var previews: some View {
        CreatePasswordView()
    }
}
