//
//  ContentView.swift
//  Test2
//
//  Created by KwameBryan on 2019-06-05.
//  Copyright © 2019 KwameBryan. All rights reserved.
//

import SwiftUI


struct ContentView : View {
    
    let users:[User] = [
        .init(id: 0, username: "User 1", message: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."),
        .init(id: 1,username: "User 2", message: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. "),
        .init(id: 2, username: "User 3", message: "Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
    ]
    var body: some View {
        NavigationView {
            List {
                Text("Users").font(.largeTitle)
                ForEach(users.identified(by: \.id)) { user in

                        UserRow(user: user)
                    }
                }.navigationBarTitle(Text("Dynamic List"))
        }
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
