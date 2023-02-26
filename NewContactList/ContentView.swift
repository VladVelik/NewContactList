//
//  ContentView.swift
//  NewContactList
//
//  Created by Sosin Vladislav on 26.02.2023.
//

import SwiftUI

struct ContentView: View {
    private let contacts = Contact.getContactList()
    
    var body: some View {
        TabView {
            ContactsView(contacts: contacts)
                .tabItem {
                    Image(systemName: "person.3")
                    Text("Contacts")
                }
            
            NumbersView(contacts: contacts)
                .tabItem {
                    Image(systemName: "phone")
                    Text("Numbers")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
