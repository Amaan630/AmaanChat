//
//  ViewAddContact.swift
//  AmaanChat
//
//  Created by Amaan Ali on 6/12/17.
//  Copyright © 2017 Amaan Ali. All rights reserved.
//

import UIKit

class AddContact: UIViewController {
    
    @IBOutlet weak var AddContactsView: UIView!
    
    var nameLabel = UILabel()
    var enterName = UITextField()
    let addButton = UIButton(frame: CGRect(x: 100, y: 100, width: 100, height: 50))
    var name = ""
    var newContact = contactInfo()
    
    var view1 = View1()

    override func viewDidLoad() {
        super.viewDidLoad()

        nameLabel.text = "Name"
        nameLabel.frame = CGRect(x: 100, y: 0, width: 100, height: 50)
        AddContactsView.addSubview(nameLabel)
 
        enterName.frame = CGRect(x: 100, y: 50, width: 200, height: 50)
        AddContactsView.addSubview(enterName)
        
        addButton.backgroundColor = .green
        addButton.setTitle("Test Button", for: .normal)
        addButton.addTarget(self, action: #selector(buttonTouched), for: .touchUpInside)
        AddContactsView.addSubview(addButton)
        
        
        newContact = contactInfo()
        newContact.name = enterName.text!
        
        
        
        view1.contactsTest.append(newContact)
        view1.contactList.reloadData()
        
        
        
        let placeholder = NSAttributedString(string: "Contact Name", attributes: [NSForegroundColorAttributeName: UIColor.lightGray])
        enterName.attributedPlaceholder = placeholder
        enterName.textColor = UIColor.black
        enterName.delegate = self as? UITextFieldDelegate
        enterName.borderStyle = UITextBorderStyle.roundedRect
        enterName.clearsOnBeginEditing = true
        view.addSubview(enterName)
        
    }
    
    func buttonTouched(sender:UIButton!) {
        nameLabel.text = enterName.text!
        
        enterName.resignFirstResponder()
        
        newContact = contactInfo()
        newContact.name = enterName.text!
        
        view1.contactsTest.append(newContact)
        view1.contactList.reloadData()

    }
    
    func textFieldDidBeginEditing(textField: UITextField) {
        
    }
    
    func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
        enterName.resignFirstResponder()
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        return true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
