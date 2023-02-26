//
//  Contact.swift
//  NewContactList
//
//  Created by Sosin Vladislav on 26.02.2023.
//

struct Contact: Identifiable {
    var id: Int
    
    let name: String
    let email: String
    let phoneNumber: String
    
    static func getContactList() -> [Contact] {
        var contactList: [Contact] = []
        
        let names = DataStore.names.shuffled()
        let surnames = DataStore.surnames.shuffled()
        let emails = DataStore.emails.shuffled()
        let phones = DataStore.phones.shuffled()
        
        for index in 0...8 {
            contactList.append(
                Contact(
                    id: index + 1,
                    name: names[index] + " " + surnames[index],
                    email: emails[index],
                    phoneNumber: phones[index]
                )
            )
        }
        
        return contactList
    }
}
