//
//  ProfileView.swift
//  Instagram
//
//  Created by Tahmid Akter on 9/10/23.
//

import SwiftUI

struct ProfileView: View {
    private let gridItems: [GridItem] = [
        .init(.flexible(), spacing: 1),
        .init(.flexible(), spacing: 1),
        .init(.flexible(), spacing: 1),
    ]
    var body: some View {
        NavigationStack {
            ScrollView{
                //header
                VStack(spacing: 10){
                    //pic & stats
                    HStack{
                        Image("panther")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 80, height: 80)
                            .clipShape(Circle())
                        Spacer()
                        
                        UserStatView(value: 3, title: "Posts")
                        
                        Spacer()
                        
                        UserStatView(value: 3, title: "Followers")
                        
                        Spacer()
                        UserStatView(value: 3, title: "Following")
                    }.padding(.horizontal)
                        
                    //name & Bio
                    VStack(alignment: .leading, spacing: 4){
                        Text("Chadwick Boseman")
                            .font(.footnote)
                            .fontWeight(.semibold)
                        
                        Text("Wakanda Forever")
                            .font(.footnote)
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal)
                    //action button
                    Button{
                        
                    } label: {
                        Text("Edit Profile")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .frame(width: 360, height: 32)
                            .foregroundColor(.black)
                            .overlay {
                                RoundedRectangle(cornerRadius: 6)
                                    .stroke(Color.gray, lineWidth: 1)
                            }
                    }
                    Divider()
                }
                //post grid view
                
                LazyVGrid(columns: gridItems, spacing: 2) {
                    ForEach(0...20, id: \.self){ index in
                        Image("panther")
                            .resizable()
                            .scaledToFill()
                    }
                }
            }
            .navigationTitle("Profile")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button{
                        
                    }label: {
                        Image(systemName: "line.3.horizontal")
                            .foregroundColor(.black)
                    }
                }
            }
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
