//
//  ProfileView.swift
//  InstaClone
//
//  Created by leandro estrada on 16/02/25.
//

import SwiftUI

struct ProfileView: View {
    
    private let gridItems: [GridItem] = [
        .init(.flexible(), spacing: 1),
        .init(.flexible(), spacing: 1),
        .init(.flexible(), spacing: 1)
    ]
    
    var body: some View {
        NavigationStack {
            ScrollView {
                //Header
                VStack(spacing: 10) {
                    //Pic and Stats
                    HStack {
                        Image("TeleProfile")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 80, height: 80)
                            .clipShape(.circle)
                        
                        Spacer()
                        HStack(spacing: 8) {
                            UserStatView(value: 3, title: "Posts")
                            
                            UserStatView(value: 12, title: "Followers")
                            
                            UserStatView(value: 24, title: "Following")
                        }
                    }
                    .padding(.horizontal)
                    
                    
                    //Name and Bio
                    VStack(alignment: .leading, spacing: 4) {
                        Text("Leandro Estrada")
                            .font(.footnote)
                            .fontWeight(.semibold)
                        
                        Text("iOS Developer")
                            .font(.footnote)
                        
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal)
                    
                    //Action Button
                    
                    Button {
                        
                    } label: {
                        Text("Edit Profile")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .frame(width: 360, height: 32)
                            .foregroundColor(.black)
                            .overlay(
                                RoundedRectangle(cornerRadius: 6).stroke(Color.gray, lineWidth: 1))
                    }
                    Divider()
                }
                
                //MARK: Post grid view
                
                LazyVGrid(columns: gridItems, spacing: 1) {
                    ForEach(0...15, id: \.self) { index in
                        Image("TeleProfile")
                            .resizable()
                            .scaledToFill()
                    }
                }
                
            } .navigationTitle("Profile")
              .navigationBarTitleDisplayMode(.inline)
              .toolbar {
                  ToolbarItem(placement: .navigationBarTrailing) {
                      Button {
                        
                      } label: {
                          Image(systemName: "line.3.horizontal")
                              .foregroundColor(.black)
                      }
                  }
              }
        }
    }
}

#Preview {
    ProfileView()
}
