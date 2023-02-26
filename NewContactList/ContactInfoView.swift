//
//  ContactInfoView.swift
//  NewContactList
//
//  Created by Sosin Vladislav on 26.02.2023.
//

import SwiftUI

struct ContactInfoView: View {
    let person: Contact
    
    var body: some View {
        List {
            HStack {
                Spacer()
                Image(systemName: "person.fill")
                    .resizable()
                    .frame(width: 150, height: 150)
                    .padding()
                Spacer()
            }
            Label(person.phoneNumber, systemImage: "phone")
            Label(person.email, systemImage: "tray")
        }
        .navigationBarTitle(person.name)
    }
}

struct ContactInfoView_Previews: PreviewProvider {
    static var previews: some View {
        ContactInfoView(person: Contact.getContactList().first!)
    }
}
