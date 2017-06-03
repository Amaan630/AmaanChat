//
//  View1.swift
//  AmaanChat
//
//  Created by Amaan Ali on 6/3/17.
//  Copyright © 2017 Amaan Ali. All rights reserved.
//

import UIKit

class View1: UIViewController {
    
    
    //Variables
    let screenSize = UIScreen.main.bounds
    //End of Variables
    

    override func viewDidLoad() {
        super.viewDidLoad()

        
        // MARK: - Contacts
        var contacts = ["Bob", "Jay", "Jed"]
        contacts.append("Seth")
        
        var contactList: UITableView = UITableView()
        contactList.sizeToFit()
        //End of Contacts
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
