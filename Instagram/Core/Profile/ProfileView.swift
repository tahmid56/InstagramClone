//
//  ProfileView.swift
//  Instagram
//
//  Created by Tahmid Akter on 9/10/23.
//

import SwiftUI

struct ProfileView: View {
    let user: User

    var posts: [Post] {
        return Post.MOCK_POSTS.filter({ $0.user?.username == user.username})
    }
    var body: some View {

            ScrollView{
                //header
                VStack(spacing: 10){
                    //pic & stats
                    HStack{
                        Image(user.profileImageUrl ?? "")
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
                        if let fullName = user.fullName {
                            Text(fullName)
                                .font(.footnote)
                                .fontWeight(.semibold)
                        }
                        if let bio = user.bio{
                            Text(bio)
                                .font(.footnote)
                        }
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
                PostGridView(posts: posts)
                
            }
            .navigationTitle("Profile")
            .navigationBarTitleDisplayMode(.inline)
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView(user: User.MOCK_USER[0])
    }
}
