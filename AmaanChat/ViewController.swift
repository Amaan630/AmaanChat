//
//  ViewController.swift
//  AmaanChat
//
//  Created by Amaan Ali on 6/3/17.
//  Copyright © 2017 Amaan Ali. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var pageScroll: UIScrollView!
    let screenSize = UIScreen.main.bounds
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        // MARK: - Page Scroller
        pageScroll.isPagingEnabled = true
        
        pageScroll.bounces = false
        pageScroll.showsVerticalScrollIndicator = false
        pageScroll.showsHorizontalScrollIndicator = false
        
        self.pageScroll.contentSize = CGSize(width: self.view.frame.width * 3, height: self.view.frame.height)
        self.pageScroll.contentOffset.x = self.view.frame.width
        //End of Page Scroller
        
        
        
        // MARK: - V1
        let V1 : View1 = View1(nibName: "View1", bundle: nil)
        
        self.addChildViewController(V1)
        self.pageScroll.addSubview(V1.view)
        V1.didMove(toParentViewController: self)
        //End of V1
        
        
        
        // MARK: - V2
        let V2 : View2 = View2(nibName: "View2", bundle: nil)
        
        self.addChildViewController(V2)
        self.pageScroll.addSubview(V2.view)
        V2.didMove(toParentViewController: self)
        
        var V2Frame : CGRect = V2.view.frame
        V2Frame.origin.x = self.view.frame.width
        V2.view.frame = V2Frame
        //End of V2
        
        
        
        // MARK: - V3
        let V3 : View3 = View3(nibName: "View3", bundle: nil)
        
        self.addChildViewController(V3)
        self.pageScroll.addSubview(V3.view)
        V3.didMove(toParentViewController: self)
        
        var V3Frame : CGRect = V3.view.frame
        V3Frame.origin.x = 2 * self.view.frame.width
        V3.view.frame = V3Frame
        //End of V3
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

