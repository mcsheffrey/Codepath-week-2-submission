//
//  IntroViewController.swift
//  Carousel
//
//  Created by Connor McSheffrey on 9/26/15.
//  Copyright © 2015 Connor McSheffrey. All rights reserved.
//

import UIKit

class IntroViewController: UIViewController {
    
    
    @IBOutlet weak var scrollView: UIScrollView!
    
    @IBOutlet weak var introImage: UIImageView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
         scrollView.contentSize = introImage.image!.size

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
