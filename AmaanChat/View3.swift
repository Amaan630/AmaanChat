//
//  View3.swift
//  AmaanChat
//
//  Created by Amaan Ali on 6/3/17.
//  Copyright © 2017 Amaan Ali. All rights reserved.
//

import UIKit

class View3: UIViewController {

    @IBOutlet weak var V3View: UIView!
    
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
        let purpleHeader: UIView = UIView(frame: CGRect(x: 0, y: 0, width: screenSize.width, height: 64))
        purpleHeader.backgroundColor = UIColor(red:1.00, green:0.31, blue:0.44, alpha:1.0)
        V3View.addSubview(purpleHeader)
        //End of Header
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
