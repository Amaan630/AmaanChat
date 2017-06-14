//
//  View3.swift
//  AmaanChat
//
//  Created by Amaan Ali on 6/3/17.
//  Copyright © 2017 Amaan Ali. All rights reserved.
//  😜
//

import UIKit

class View3: UIViewController {

    @IBOutlet weak var V3View: UIView!
    
    var contacts = ["Bob", "Jay", "Jed"]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        //Variables
        let screenSize = UIScreen.main.bounds
        
        let maximumY = V3View.frame.maxY
        let minimumY = V3View.frame.minY
        let maximumX = V3View.frame.maxX
        let minimumX = V3View.frame.minX
        //End of Variables

        
        
        
        
        // MARK: - Header
        let purpleHeader: UIView = UIView(frame: CGRect(x: 0, y: 0, width: screenSize.width, height: 75))
        purpleHeader.backgroundColor = UIColor(red:1.00, green:0.31, blue:0.44, alpha:1.0)
        V3View.addSubview(purpleHeader)
        
        let title = UILabel(frame: CGRect(x: 55, y: 27, width: screenSize.width-20, height: 30))
        title.text = "Feed"
        title.textColor = UIColor.white
        title.font = UIFont(name:"HelveticaNeue-Bold", size: 20.0)
        V3View.addSubview(title)
        
        let searchIcon = UIImage(named: "Search Icon White")
        let searchIconView = UIImageView(image: searchIcon)
        searchIconView.frame = CGRect(x: 15, y: 32, width: 20, height: 20)
        V3View.addSubview(searchIconView)
        
        //let searchBar = UITextField(frame: CGRect(x: 105, y: 29, width: screenSize.width-20, height: 30))
        //searchBar.text = "Search"
        //searchBar.textColor = UIColor.white
        //V3View.addSubview(searchBar)
        
        let curvedTop = UIView()
        curvedTop.backgroundColor = UIColor.white
        curvedTop.frame = CGRect(x: 0, y: 65, width: screenSize.width, height: 20)
        curvedTop.layer.cornerRadius = 10
        V3View.addSubview(curvedTop)
        
        
        /*
        let title = UILabel(frame: CGRect(x: 15, y: 20, width: screenSize.width-20, height: 40))
        title.text = "Feed"
        title.textColor = UIColor.white
        title.font = UIFont(name:"HelveticaNeue-Bold", size: 20.0)
        V3View.addSubview(title)
        
        //let searchIcon = UIImage(named: "Search Icon White")
        //let searchIconView = UIImageView(image: searchIcon)
        //searchIconView.frame = CGRect(x: 15, y: 32, width: 20, height: 20)
        //V3View.addSubview(searchIconView)
        
        //let searchBar = UITextField(frame: CGRect(x: 105, y: 29, width: screenSize.width-20, height: 30))
        //searchBar.text = "Search"
        //searchBar.textColor = UIColor.white
        //V3View.addSubview(searchBar)
        
        let curvedTop = UIView()
        curvedTop.backgroundColor = UIColor.white
        curvedTop.frame = CGRect(x: 0, y: 65, width: screenSize.width, height: 40)
        curvedTop.layer.cornerRadius = 10
        V3View.addSubview(curvedTop)
        
        let dividerLine = UIView()
        dividerLine.backgroundColor = UIColor.lightGray
        dividerLine.frame = CGRect(x: 0, y: 108.5, width: screenSize.width, height: 0.5)
        V3View.addSubview(dividerLine)
        
        let searchIcon = UIImage(named: "Search Icon")
        let searchIconView = UIImageView(image: searchIcon)
        searchIconView.frame = CGRect(x: 15, y: 78, width: 15, height: 15)
        V3View.addSubview(searchIconView)
        
        let searchBar = UITextField(frame: CGRect(x: 45, y: 71, width: screenSize.width-20, height: 30))
        searchBar.placeholder = "Search"
        searchBar.textColor = UIColor.gray
        V3View.addSubview(searchBar)
         */
        //End of Header
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
