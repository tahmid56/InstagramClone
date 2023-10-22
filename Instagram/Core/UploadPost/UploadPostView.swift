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
    @StateObject var viewModel: UploadPostViewModel = UploadPostViewModel()
    @Binding var tabIndex: Int
    var body: some View {
        VStack{
            HStack{
                Button {
                    caption = ""
                    viewModel.selectedImage = nil
                    viewModel.postImage = nil
                    tabIndex = 0
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
                if let image = viewModel.postImage {
                    image
                        .resizable()
                        .scaledToFill()
                        .frame(width: 100, height: 100)
                        .clipped()
                }
                
                TextField("Enter your caption", text: $caption, axis: .vertical)
            }
            .padding()
            Spacer()
        }
        .onAppear{
            imagePickerPresented.toggle()
        }
        .photosPicker(isPresented: $imagePickerPresented, selection: $viewModel.selectedImage)
    }
}

struct UploadPostView_Previews: PreviewProvider {
    static var previews: some View {
        UploadPostView(tabIndex: .constant(0))
    }
}
