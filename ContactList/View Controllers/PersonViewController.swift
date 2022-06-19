//
//  PersonViewController.swift
//  ContactList
//
//  Created by Stanislav Demyanov on 18.06.2022.
//

import UIKit

class PersonViewController: UIViewController {
    
    // MARK: - IBOutlets
    
    @IBOutlet weak var phoneLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    
    // MARK: - Public properties
    
    var contact: Person!
    
    // MARK: - Life cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUI()
    }
    
    // MARK: - Private methods
    
    private func setUI() {
        navigationItem.title = contact.fullName
        phoneLabel.text = "Phone: \(contact.phoneNumber)"
        emailLabel.text = "Email: \(contact.email)"
    }
}
