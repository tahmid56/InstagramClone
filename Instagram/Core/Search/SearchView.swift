//
//  SearchView.swift
//  Instagram
//
//  Created by Tahmid Akter on 10/10/23.
//

import SwiftUI

struct SearchView: View {
    @State private var searchText = ""
    var body: some View {
        NavigationStack {
            ScrollView{
                LazyVStack(spacing: 12){
                    ForEach(0...15, id:\.self){user in
                        HStack{
                            Image("panther")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 40, height: 40)
                                .clipShape(Circle())
                            
                            VStack(alignment: .leading){
                                Text("Venom")
                                    .fontWeight(.semibold)
                                Text("Eddie Brock")
                                
                            }
                            .font(.footnote)
                            
                            Spacer()
                        }
                        .padding(.horizontal, 8)
                    }
                }
                .searchable(text: $searchText, prompt: "Search...")
            }
            .navigationTitle("Explore")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
