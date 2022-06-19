//
//  ContactsListTableViewController.swift
//  ContactList
//
//  Created by Stanislav Demyanov on 15.06.2022.
//

import UIKit

class ContactsListTableViewController: UITableViewController {
    
    // MARK: - Private properties
    
    var contactList: [Person]!
    
    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contactList?.count ?? 20
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contact", for: indexPath)
        var content = cell.defaultContentConfiguration()
        let person = contactList?[indexPath.row]
        
        content.text = person?.fullName
        
        cell.contentConfiguration = content
        return cell
    }
    
    // MARK: - Override methods
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        guard let personVC = segue.destination as? PersonViewController else { return }
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        let person = contactList?[indexPath.row]
        personVC.contact = person
    }
}

