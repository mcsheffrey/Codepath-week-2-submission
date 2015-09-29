//
//  settingsViewController.swift
//  Carousel
//
//  Created by Connor McSheffrey on 9/27/15.
//  Copyright © 2015 Connor McSheffrey. All rights reserved.
//

import UIKit

class settingsViewController: UIViewController {
    
    @IBOutlet weak var scrollView: UIScrollView!
    
    @IBOutlet weak var settingsImage: UIImageView!
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        scrollView.contentSize = settingsImage.image!.size

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onCloseSettings(sender: AnyObject) {
        navigationController!.popViewControllerAnimated(true)
    }
    
    @IBAction func onSignOut(sender: AnyObject) {
        navigationController?.popToRootViewControllerAnimated(true)
    }
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
