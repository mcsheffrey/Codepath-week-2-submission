//
//  welcomeViewController.swift
//  Carousel
//
//  Created by Connor McSheffrey on 9/26/15.
//  Copyright © 2015 Connor McSheffrey. All rights reserved.
//

import UIKit

class welcomeViewController: UIViewController, UIScrollViewDelegate {
    
    @IBOutlet weak var scrollView: UIScrollView!
    
    @IBOutlet weak var pageControl: UIPageControl!
    
    @IBOutlet weak var launchCarouselButton: UIButton!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        scrollView.contentSize = CGSize(width: 1280, height: 1.0)
        
        
        scrollView.delegate = self
        
        launchCarouselButton.alpha = 0

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func scrollViewDidEndDecelerating(scrollView: UIScrollView!) {
        // Get the current page based on the scroll offset
        var page : Int = Int(round(scrollView.contentOffset.x / 320))
        
        // Set the current page, so the dots will update
        pageControl.currentPage = page
        
        print(round(scrollView.contentOffset.x / 320))
        
        if (round(scrollView.contentOffset.x / 320) == 3.0) {
            UIView.animateWithDuration(0.4,
                delay: 0,
                options: .CurveEaseInOut,
                animations: {
                    self.launchCarouselButton.alpha = 1
                },
                completion: { finished in
                    print("Animation done")
                }
            )
        }
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
