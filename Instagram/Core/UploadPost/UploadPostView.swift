//
//  UploadPostView.swift
//  Instagram
//
//  Created by Tahmid Akter on 22/10/23.
//

import SwiftUI
import PhotosUI

struct UploadPostView: View {
    @State private var caption: String = ""
    @State private var imagePickerPresented = false
    @State private var photoItem: PhotosPickerItem?
    var body: some View {
        VStack{
            HStack{
                Button {
                    print("cancel upload")
                } label: {
                    Text("Cancel")
                }
                
                Spacer()
                
                Text("New Post")
                    .fontWeight(.semibold)
                
                Spacer()
                
                Button {
                    print("Upload")
                } label: {
                    Text("Upload")
                }
            }
            .padding(.horizontal)
            
            HStack(spacing: 8){
                Image("panther")
                    .resizable()
                    .frame(width: 100, height: 100)
                
                TextField("Enter your caption", text: $caption, axis: .vertical)
            }
            .padding()
            Spacer()
        }
        .onAppear{
            imagePickerPresented.toggle()
        }
        .photosPicker(isPresented: $imagePickerPresented, selection: $photoItem)
    }
}

struct UploadPostView_Previews: PreviewProvider {
    static var previews: some View {
        UploadPostView()
    }
}
