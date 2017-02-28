//
//  past.swift
//  MitchellSweet
//
//  Created by Mitchell Sweet on 4/16/15.
//  Copyright (c) 2015 Mitchell Sweet. All rights reserved.
//

import UIKit

class past: UIViewController {
    
    @IBOutlet weak var toplabel:UILabel!
    @IBOutlet weak var iphoneoutlines:UIImageView!
    @IBOutlet weak var viewinview:UIImageView!
    @IBOutlet weak var descriptiontextview:UITextView!
    @IBOutlet weak var littlearrow:UILabel!
    @IBOutlet weak var apppicket:UISegmentedControl!
    @IBOutlet weak var chooseapp:UILabel!
    var isoundsimage = UIImage (named: "iSounds.png")
    var isoundsdescription = "My first app and most popular. It’s a simple soundboard with eight of the best sounds to have in your pocket. I learned so much from this app including the basics of Xcode, how to play sounds, and how actions and outlets work."
    
    var maxcampimage = UIImage (named: "max.png")
    var maxcampdescription = "This is an app I created for my summer camp. Maximum Travel Camp goes on a trip to a new and exciting place every day. With the app you can view the camp calendar, receive notifications about trips, see countdowns to camp, record roller coaster rides, take camp photos and more. With this app I learned the beauty of constant communication when working with a business. I also learned many coding skills as well."
    
    var gravityimage = UIImage (named: "Gravity.png")
    var gravitydescription = "My first attempt at a game. Your job is to navigate a ship around comets that are flying towards you. This app was fun to make because I was able to figure out how objects move and interact with each other, but my favorite thing was that I got to play with the game I created after it was finished."
    
    var irideimage = UIImage (named: "irideshot.png")
    var iridedescription = "My favorite app that I have created! iRide will record your speed, elevation, time and g-force while riding a roller coaster and let you save your ride after. You can view your roller coaster rides just like you can view your pictures. Let's just say that without what I learned from iRide, I would not be where I am today in the developing world."

    override func viewDidLoad() {
        super.viewDidLoad()
        
        UserDefaults.standard .set(true, forKey: "comingfrompast")
        
        let verticalMotionEffect = UIInterpolatingMotionEffect(keyPath: "center.y",
            type: .tiltAlongVerticalAxis)
        verticalMotionEffect.minimumRelativeValue = -10
        verticalMotionEffect.maximumRelativeValue = 10
        
        // Set horizontal effect
        let horizontalMotionEffect = UIInterpolatingMotionEffect(keyPath: "center.x",
            type: .tiltAlongHorizontalAxis)
        horizontalMotionEffect.minimumRelativeValue = -10
        horizontalMotionEffect.maximumRelativeValue = 10
        
        // Create group to combine both
        let group = UIMotionEffectGroup()
        group.motionEffects = [horizontalMotionEffect, verticalMotionEffect]
        
        // Add both effects to your view
        viewinview.addMotionEffect(group)
        iphoneoutlines.addMotionEffect(group)

        
        littlearrow.alpha = 0

        // Do any additional setup after loading the view.
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func appswitcherchanged(_ sender: AnyObject) {
        
        if apppicket.selectedSegmentIndex == 0 {
            //iSounds
            
            //self.littlearrow.setTranslatesAutoresizingMaskIntoConstraints(true)
            self.littlearrow.frame = CGRect(x: 46,y: 513,width: 16,height: 21)
            
            UIView.animate(withDuration: 0.5,
                delay: 0,
                options: UIViewAnimationOptions.curveLinear,
                animations: {
                    
                    self.viewinview.alpha = 0
                    self.descriptiontextview.alpha = 0
                    self.littlearrow.alpha = 1
                    
                    
                    self.iphoneoutlines.transform = CGAffineTransform.identity
                    self.viewinview.transform = CGAffineTransform.identity
                    
                    
                    
                }, completion: {
                    (value: Bool) in
                    // self.gotothefuture()
            })

            viewinview.image = isoundsimage
            self.descriptiontextview.text = self.isoundsdescription
            
            UIView.animate(withDuration: 1,
                delay: 0.5,
                options: UIViewAnimationOptions.curveLinear,
                animations: {
                    
                    self.viewinview.alpha = 1
                    self.descriptiontextview.alpha = 1
                    
                }, completion: {
                    (value: Bool) in
                   //self.descriptiontextview.text = self.isoundsdescription
            })

            
        }
        
        if apppicket.selectedSegmentIndex == 1 {
            //iRide
            
            self.littlearrow.translatesAutoresizingMaskIntoConstraints = true
            self.littlearrow.frame = CGRect(x: 116,y: 513,width: 16,height: 21)
            
            UIView.animate(withDuration: 0.5,
                delay: 0,
                options: UIViewAnimationOptions.curveLinear,
                animations: {
                    
                    self.viewinview.alpha = 0
                    self.descriptiontextview.alpha = 0
                    self.littlearrow.alpha = 1
                   
                    
                    self.iphoneoutlines.transform = CGAffineTransform(rotationAngle: 3.14/2);
                    self.viewinview.transform = CGAffineTransform(rotationAngle: 3.14/2);
                    
                    
                    
                }, completion: {
                    (value: Bool) in
                    // self.gotothefuture()
            })
            
            viewinview.image = irideimage
            self.descriptiontextview.text = self.iridedescription
            
            UIView.animate(withDuration: 1,
                delay: 0.5,
                options: UIViewAnimationOptions.curveLinear,
                animations: {
                    
                    self.viewinview.alpha = 1
                    self.descriptiontextview.alpha = 1
                    
                }, completion: {
                    (value: Bool) in
                    //self.descriptiontextview.text = self.isoundsdescription
            })

            
        }
        
        if apppicket.selectedSegmentIndex == 2 {
            //Max Camp
            
            self.littlearrow.translatesAutoresizingMaskIntoConstraints = true
            self.littlearrow.frame = CGRect(x: 186,y: 513,width: 16,height: 21)
            
            UIView.animate(withDuration: 0.5,
                delay: 0,
                options: UIViewAnimationOptions.curveLinear,
                animations: {
                    
                    self.viewinview.alpha = 0
                    self.descriptiontextview.alpha = 0
                    self.littlearrow.alpha = 1
                    
                    
                    self.iphoneoutlines.transform = CGAffineTransform.identity
                    self.viewinview.transform = CGAffineTransform.identity
                    
                    
                    
                }, completion: {
                    (value: Bool) in
                    // self.gotothefuture()
            })
            
            viewinview.image = maxcampimage
            self.descriptiontextview.text = self.maxcampdescription
            
            UIView.animate(withDuration: 1,
                delay: 0.5,
                options: UIViewAnimationOptions.curveLinear,
                animations: {
                    
                    self.viewinview.alpha = 1
                    self.descriptiontextview.alpha = 1
                    
                }, completion: {
                    (value: Bool) in
                    //self.descriptiontextview.text = self.isoundsdescription
            })

            
        }
        
        if apppicket.selectedSegmentIndex == 3 {
            //Gravity
            
            self.littlearrow.translatesAutoresizingMaskIntoConstraints = true
            self.littlearrow.frame = CGRect(x: 258,y: 513,width: 16,height: 21)
            
            UIView.animate(withDuration: 0.5,
                delay: 0,
                options: UIViewAnimationOptions.curveLinear,
                animations: {
                    
                    self.viewinview.alpha = 0
                    self.descriptiontextview.alpha = 0
                    self.littlearrow.alpha = 1
                    
                    
                    self.iphoneoutlines.transform = CGAffineTransform.identity
                    self.viewinview.transform = CGAffineTransform.identity
                    
                    
                    
                }, completion: {
                    (value: Bool) in
                    // self.gotothefuture()
            })
            
            viewinview.image = gravityimage
            self.descriptiontextview.text = self.gravitydescription
            
            UIView.animate(withDuration: 1,
                delay: 0.5,
                options: UIViewAnimationOptions.curveLinear,
                animations: {
                    
                    self.viewinview.alpha = 1
                    self.descriptiontextview.alpha = 1
                    
                }, completion: {
                    (value: Bool) in
                    //self.descriptiontextview.text = self.isoundsdescription
            })

            
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
