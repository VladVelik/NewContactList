//
//  NumbersView.swift
//  NewContactList
//
//  Created by Sosin Vladislav on 26.02.2023.
//

import SwiftUI

struct NumbersView: View {
    let contacts: [Contact]
    
    var body: some View {
        NavigationStack {
            List(contacts) { contact in
                Section(header: Text(contact.name).font(.headline)) {
                    Label(contact.phoneNumber, systemImage: "phone")
                    Label(contact.email, systemImage: "tray")
                }
            }
            .navigationBarTitle("Contact List")
        }
    }
}

struct NumbersView_Previews: PreviewProvider {
    static var previews: some View {
        NumbersView(contacts: Contact.getContactList())
    }
}
