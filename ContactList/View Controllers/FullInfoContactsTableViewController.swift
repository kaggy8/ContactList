//
//  FullInfoContactsTableViewController.swift
//  ContactList
//
//  Created by Stanislav Demyanov on 18.06.2022.
//

import UIKit

class FullInfoContactsTableViewController: UITableViewController {
    
    var person: [Person]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

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
        var index = 0
        
        let email = person[indexPath.section].email
        let phone = person[indexPath.section].phoneNumber
        cell.tag = indexPath.row
        if cell.tag == 0 {
            content.text = phone
            index += 1
        } else {
            content.text = email
        }
        
        cell.contentConfiguration = content
        return cell
    }
}

