//
//  View1.swift
//  AmaanChat
//
//  Created by Amaan Ali on 6/3/17.
//  Copyright © 2017 Amaan Ali. All rights reserved.
//  😜
//

import UIKit

class View1: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var V1View: UIView!
    
    var contacts = ["Bob", "Jay", "Jed"]
    
    var contactsTest : [contactInfo] = []
    
    var contactList: UITableView = UITableView()
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        //Variables
        let screenSize = UIScreen.main.bounds
        
        let maximumY = V1View.frame.maxY
        let minimumY = V1View.frame.minY
        let maximumX = V1View.frame.maxX
        let minimumX = V1View.frame.minX
        //End of Variables
        
        
        
        // MARK: - Header
        let greenHeader: UIView = UIView(frame: CGRect(x: 0, y: 0, width: screenSize.width, height: 75))
        greenHeader.backgroundColor = UIColor(red:0.49, green:0.90, blue:0.54, alpha:1.0)
        V1View.addSubview(greenHeader)
        
        let title = UILabel(frame: CGRect(x: 55, y: 27, width: screenSize.width-20, height: 30))
        title.text = "Chat"
        title.textColor = UIColor.white
        title.font = UIFont(name:"HelveticaNeue-Bold", size: 20.0)
        V1View.addSubview(title)
        
        let searchIcon = UIImage(named: "Search Icon White")
        let searchIconView = UIImageView(image: searchIcon)
        searchIconView.frame = CGRect(x: 15, y: 32, width: 20, height: 20)
        V1View.addSubview(searchIconView)
        
        //let searchBar = UITextField(frame: CGRect(x: 105, y: 29, width: screenSize.width-20, height: 30))
        //searchBar.text = "Search"
        //searchBar.textColor = UIColor.white
        //V1View.addSubview(searchBar)
        
        let curvedTop = UIView()
        curvedTop.backgroundColor = UIColor.white
        curvedTop.frame = CGRect(x: 0, y: 65, width: screenSize.width, height: 20)
        curvedTop.layer.cornerRadius = 10
        V1View.addSubview(curvedTop)
        

        /*
        let title = UILabel(frame: CGRect(x: 15, y: 17, width: screenSize.width-20, height: 40))
        title.text = "Chat"
        title.textColor = UIColor.white
        title.font = UIFont(name:"HelveticaNeue-Bold", size: 18.0)
        V1View.addSubview(title)
        
        let curvedTop = UIView()
        curvedTop.backgroundColor = UIColor.white
        curvedTop.frame = CGRect(x: 0, y: 55, width: screenSize.width, height: 40)
        curvedTop.layer.cornerRadius = 10
        V1View.addSubview(curvedTop)
        let dividerLine = UIView()
        dividerLine.backgroundColor = UIColor.lightGray
        dividerLine.frame = CGRect(x: 0, y: 98.5, width: screenSize.width, height: 0.5)
        V1View.addSubview(dividerLine)
        
        let searchIcon = UIImage(named: "Search Icon")
        let searchIconView = UIImageView(image: searchIcon)
        searchIconView.frame = CGRect(x: 15, y: 68, width: 15, height: 15)
        V1View.addSubview(searchIconView)
    
        let searchBar = UITextField(frame: CGRect(x: 45, y: 65, width: screenSize.width-20, height: 30))
        searchBar.placeholder = "Search"
        searchBar.textColor = UIColor.gray
        V1View.addSubview(searchBar)
         */
        //End of Header

        
        
        // MARK: - Contacts
        contactList.rowHeight = 50
        contactList.separatorInset.right = 15
        contactList.frame = CGRect(x: minimumX, y: minimumY+79, width: screenSize.width, height: screenSize.height-79)
        
        contactsTest = defaultContacts()
        
        contactList.delegate = self as UITableViewDelegate
        contactList.dataSource = self as UITableViewDataSource
        
        V1View.addSubview(contactList)
        //End of Contacts
        
    }
    
    func defaultContacts() -> [contactInfo] {
        let bob = contactInfo()
        bob.name = "Bob"
        bob.minAgo = 4
        bob.streak = false
        
        let jay = contactInfo()
        jay.name = "Jay"
        jay.minAgo = 2
        jay.streak = true
        
        let jed = contactInfo()
        jed.name = "Jed"
        jed.minAgo = 3
        jed.streak = true
        
        return [bob, jay, jed]
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contactsTest.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        let contact = contactsTest[indexPath.row]
        
        if contact.streak == true {
            cell.textLabel?.text = "🔥 \(contact.name)"
        }
        else {
            cell.textLabel?.text = contact.name
        }
        
        cell.textLabel?.font = UIFont(name:"HelveticaNeue", size:18)
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedfriend = contacts[indexPath.row]
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let nextVC = segue.destination as! AddContact
        nextVC.view1 = self
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
