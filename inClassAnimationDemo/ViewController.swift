//
//  ViewController.swift
//  inClassAnimationDemo
//
//  Created by StudyBlue on 10/25/16.
//  Copyright © 2016 myself. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var pigImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func didTapAnimatePigButton(_ sender: AnyObject) {
        
        //        UIView.animate(withDuration: 0.2) {
        //            self.pigImageView.center.y += 150
        //        }
        
        //                UIView.animate(withDuration: 0.4, delay: 0, options: [UIViewAnimationOptions.autoreverse, UIViewAnimationOptions.repeat], animations: {
        //                    self.pigImageView.transform = CGAffineTransform(rotationAngle: CGFloat(45 * M_PI/180))
        //                }, completion: nil)
        
        
        UIView.animate(withDuration: 0.3, delay: 0, options: [], animations: {
            self.pigImageView.center.y += 150
        }) { (Bool) in
            UIView.animate(withDuration: 0.4, delay: 0, options: [UIViewAnimationOptions.autoreverse, UIViewAnimationOptions.repeat], animations: {
                self.pigImageView.transform = CGAffineTransform(rotationAngle: CGFloat(45 * M_PI/180))
                }, completion: nil)
        }
        
        // end didTapAnimatePigButton
    }
    
}

