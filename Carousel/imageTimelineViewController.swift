//
//  imageTimelineViewController.swift
//  Carousel
//
//  Created by Connor McSheffrey on 9/27/15.
//  Copyright © 2015 Connor McSheffrey. All rights reserved.
//

import UIKit

class imageTimelineViewController: UIViewController {
    
    @IBOutlet weak var feedImage: UIImageView!
    
    @IBOutlet weak var scrollView: UIScrollView!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        scrollView.contentSize = feedImage.image!.size

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
