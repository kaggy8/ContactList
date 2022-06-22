//
//  Person.swift
//  ContactList
//
//  Created by Stanislav Demyanov on 15.06.2022.
//

struct Person {
    
    let firstName: String
    let lastName: String
    let phoneNumber: String
    let email: String
    
    var fullName: String {
        "\(firstName) \(lastName)"
    }
    
    static func getUser() -> [Person] {
        let data = DataManager.shared

        let firstNameArray: [String] = data.firstNames.shuffled()
        let lastNameArray: [String] = data.lastNames.shuffled()
        let phoneNumberArray: [String] = data.phoneNumbers.shuffled()
        let emailArray: [String] = data.emails.shuffled()
        var object: [Person] = []
        
        for _ in firstNameArray {
            let count = object.count
            
            let firstName = firstNameArray[0 + count]
            let lastName = lastNameArray[0 + count]
            let phoneNumber = phoneNumberArray[0 + count]
            let email = emailArray[0 + count]
            
            object.append(Person(firstName: firstName,
                                 lastName: lastName,
                                 phoneNumber: phoneNumber,
                                 email: email))
        }
        
        return object
    }

}
