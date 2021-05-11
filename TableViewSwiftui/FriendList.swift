//
//  FriendList.swift
//  TableViewSwiftui
//
//  Created by Ksheetij Tayde on 11/05/21.
//  Copyright © 2021 rasika. All rights reserved.
//

import SwiftUI

struct FriendList: View {
    var friendToInvite: [Friend]
    var body: some View {
        NavigationView{
            List(friendToInvite){
                friend in ListRow(eachFriend: friend)
                
            }.navigationBarTitle(Text(" My Friends List"))
        }
    }
}

struct ListRow: View {
    var eachFriend: Friend
    var body: some View{
        HStack{
            Text(eachFriend.name)
            Spacer()
            Image("img")
            .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(maxWidth: 70)
        }
    }
}

var myfriends = [
    Friend(id: 1, name: "Prerna"),
    Friend(id: 2, name: "Prapti"),
    Friend(id: 3, name: "Mansi"),
    Friend(id: 4, name: "Hitesha"),
    Friend(id: 5, name: "Vaishnavi"),
    

]

struct FriendList_Previews: PreviewProvider {
    static var previews: some View {
        FriendList(friendToInvite: myfriends)
    }
}
