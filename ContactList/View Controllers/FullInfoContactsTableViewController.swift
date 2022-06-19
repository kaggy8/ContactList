//
//  FullInfoContactsTableViewController.swift
//  ContactList
//
//  Created by Stanislav Demyanov on 18.06.2022.
//

import UIKit

class FullInfoContactsTableViewController: UITableViewController {
    
    // MARK: - Public properties
    
    var person: [Person]!

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return person?.count ?? 0
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        person![section].fullName
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contactFull", for: indexPath)
        var content = cell.defaultContentConfiguration()
        
        let email = person[indexPath.section].email
        let phone = person[indexPath.section].phoneNumber
        cell.tag = indexPath.row
        if cell.tag == 0 {
            content.text = phone
        } else {
            content.text = email
        }
        
        cell.contentConfiguration = content
        return cell
    }
}

