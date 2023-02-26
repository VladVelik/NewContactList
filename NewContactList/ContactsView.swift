//
//  ContactsView.swift
//  NewContactList
//
//  Created by Sosin Vladislav on 26.02.2023.
//

import SwiftUI

struct ContactsView: View {
    let contacts: [Contact]
    
    var body: some View {
        NavigationStack {
            List(contacts) { contact in
                NavigationLink(
                    contact.name,
                    destination: ContactInfoView(person: contact)
                )
            }
            .navigationBarTitle("Contact List")
            .listStyle(.plain)
        }
    }
}

struct ContactsView_Previews: PreviewProvider {
    static var previews: some View {
        ContactsView(contacts: Contact.getContactList())
    }
}
