//
//  UserRow.swift
//  Test2
//
//  Created by KwameBryan on 2019-06-05.
//  Copyright © 2019 KwameBryan. All rights reserved.
//
import SwiftUI

struct UserRow:View {
    let user:User
    var body: some View {
        HStack {
            Image("pickachu")
                .resizable()
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.red, lineWidth: 4))
                .frame(width:70, height:70)
            
            VStack(alignment: .leading) {
                Text(user.username).font(.headline)
                Text(user.message).font(.subheadline).lineLimit(nil)
                }.padding(.leading,8)
            
            }.padding(.init(top: 12, leading: 0, bottom: 12, trailing: 0))
    }
}
