//
//  whoIam.swift
//  MitchellSweet
//
//  Created by Mitchell Sweet on 4/16/15.
//  Copyright (c) 2015 Mitchell Sweet. All rights reserved.
//

import UIKit

class whoIam: UIViewController {
    
    @IBOutlet weak var badgepic: UIImageView!
    @IBOutlet weak var badgelabel: UILabel!
    @IBOutlet weak var pagecontroller: UIPageControl!
    @IBOutlet weak var tutlabelbottom: UILabel!
    @IBOutlet weak var background1: UIImageView!
    @IBOutlet weak var background2: UIImageView!
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
    @IBOutlet weak var backswipe: UISwipeGestureRecognizer!
    @IBOutlet weak var forwardswipe: UISwipeGestureRecognizer!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        backswipe.isEnabled = false
        
        UserDefaults.standard .set(true, forKey: "comingfromwhoiam")
        
        
        let verticalMotionEffect = UIInterpolatingMotionEffect(keyPath: "center.y",
            type: .tiltAlongVerticalAxis)
        verticalMotionEffect.minimumRelativeValue = -15
        verticalMotionEffect.maximumRelativeValue = 15
        
        // Set horizontal effect
        let horizontalMotionEffect = UIInterpolatingMotionEffect(keyPath: "center.x",
            type: .tiltAlongHorizontalAxis)
        horizontalMotionEffect.minimumRelativeValue = -15
        horizontalMotionEffect.maximumRelativeValue = 15
        
        // Create group to combine both
        let group = UIMotionEffectGroup()
        group.motionEffects = [horizontalMotionEffect, verticalMotionEffect]
        
        // Add both effects to your view
        background1.addMotionEffect(group)
        background2.addMotionEffect(group)
        
        
        //var timer = NSTimer.scheduledTimerWithTimeInterval(0.8, target: self, selector: Selector("startit"), userInfo: nil, repeats: false)
        
        self.pagecontroller.currentPage = 0
        
         if UserDefaults.standard .bool(forKey: "haveloadedwhoiam") {
            let visualEffectView = UIVisualEffectView(effect: UIBlurEffect(style: .dark)) as UIVisualEffectView
            visualEffectView.frame = self.background2.bounds
            self.background2.addSubview(visualEffectView)
            
            self.background1.alpha = 0
            self.background2.alpha = 1

         }
         else
         {
            label1.alpha = 0
            label2.alpha = 0
            label3.alpha = 0
            pagecontroller.alpha = 0
            tutlabelbottom.alpha = 0
            
            var timer9 = Timer.scheduledTimer(timeInterval: 2, target: self, selector: #selector(whoIam.menuset), userInfo: nil, repeats: false)
            
            UserDefaults.standard .set(true, forKey: "haveloadedwhoiam")

         }


        // Do any additional setup after loading the view.
    }
    
    func menuset () {
        let visualEffectView = UIVisualEffectView(effect: UIBlurEffect(style: .dark)) as UIVisualEffectView
        visualEffectView.frame = self.background2.bounds
        self.background2.addSubview(visualEffectView)
        
        
        UIView.animate(withDuration: 1,
            delay: 0,
            options: UIViewAnimationOptions.curveLinear,
            animations: {
                self.background1.alpha = 0
                self.background2.alpha = 1
                self.pagecontroller.alpha = 1
                self.tutlabelbottom.alpha = 1
                self.label1.alpha = 1
                self.label2.alpha = 1
                self.label3.alpha = 1
                
            }, completion: nil)

    }
    
    
    
    @IBAction func changepageforward (_ sender: AnyObject) {
        self.pagecontroller.currentPage = self.pagecontroller.currentPage + 1
        
        if self.pagecontroller.currentPage == 0 {
            
             self.label1.translatesAutoresizingMaskIntoConstraints = true
             self.label2.translatesAutoresizingMaskIntoConstraints = true
             self.label3.translatesAutoresizingMaskIntoConstraints = true
            
            self.label1.text = "Who am I?"
            self.label2.text = "My name is Mitchell Sweet"
            self.label3.text = "and I love to create iOS apps."
            
            UIView.animate(withDuration: 1,
                delay: 0,
                options: UIViewAnimationOptions.curveLinear,
                animations: {
                    
                    self.label1.frame = CGRect(x: 10,y: 103,width: 355,height: 76)
                    self.label2.frame = CGRect(x: 13, y: 174, width: 246, height: 110)
                    self.label3.frame = CGRect(x: 13, y: 279, width: 287, height: 110)

                    
                }, completion: {
                    (value: Bool) in
                    
            })
           
            
        }
        if self.pagecontroller.currentPage == 1 {
            self.label1.translatesAutoresizingMaskIntoConstraints = true
            self.label2.translatesAutoresizingMaskIntoConstraints = true
            self.label3.translatesAutoresizingMaskIntoConstraints = true
            
            backswipe.isEnabled = true
            
        
            
            UIView.animate(withDuration: 0.3,
                delay: 0,
                options: UIViewAnimationOptions.curveLinear,
                animations: {
                    
                    self.label1.frame = CGRect(x: -360,y: 103,width: 355,height: 76)
                    
                    
                }, completion: {
                    (value: Bool) in
                    
            })
            
            UIView.animate(withDuration: 0.3,
                delay: 0.2,
                options: UIViewAnimationOptions.curveLinear,
                animations: {
                    
                    self.label2.frame = CGRect(x: -250, y: 174, width: 246, height: 110)
                    
                    
                }, completion: {
                    (value: Bool) in
                    
            })
            
            UIView.animate(withDuration: 0.3,
                delay: 0.7,
                options: UIViewAnimationOptions.curveLinear,
                animations: {
                    
                    self.label3.frame = CGRect(x: -300, y: 279, width: 287, height: 110)
                    
                }, completion: {
                    (value: Bool) in
                    
                    self.label1.text = "I am 16 Years Old,"
                    self.label2.text = "I live in New York,"
                    self.label3.text = "and I go to Roslyn High School."
                    
                    self.label1.frame = CGRect(x: 380, y: 103, width: 355, height: 76)
                    self.label2.frame = CGRect(x: 380, y: 174, width: 246, height: 110)
                    self.label3.frame = CGRect(x: 380, y: 279, width: 287, height: 110)
                    
                    self .firstbackin()
                
            })
            
        }
        
        
        if self.pagecontroller.currentPage == 2 {
            self.label1.translatesAutoresizingMaskIntoConstraints = true
            self.label2.translatesAutoresizingMaskIntoConstraints = true
            self.label3.translatesAutoresizingMaskIntoConstraints = true
            
            
            UIView.animate(withDuration: 0.3,
                delay: 0,
                options: UIViewAnimationOptions.curveLinear,
                animations: {
                    
                    self.label1.frame = CGRect(x: -360,y: 103,width: 355,height: 76)
                    
                    
                }, completion: {
                    (value: Bool) in
                    
            })
            
            UIView.animate(withDuration: 0.3,
                delay: 0.2,
                options: UIViewAnimationOptions.curveLinear,
                animations: {
                    
                    self.label2.frame = CGRect(x: -250, y: 174, width: 246, height: 110)
                    
                    
                }, completion: {
                    (value: Bool) in
                    
            })
            
            UIView.animate(withDuration: 0.3,
                delay: 0.7,
                options: UIViewAnimationOptions.curveLinear,
                animations: {
                    
                    self.label3.frame = CGRect(x: -300, y: 279, width: 287, height: 110)
                    
                }, completion: {
                    (value: Bool) in
                    
                    self.label1.text = "Other than developing,"
                    self.label2.text = "I love to ski and bike."
                    self.label3.text = "I ride the 5 Boro Bike Tour yearly."
                    
                    self.label1.frame = CGRect(x: 380, y: 103, width: 355, height: 76)
                    self.label2.frame = CGRect(x: 380, y: 174, width: 246, height: 110)
                    self.label3.frame = CGRect(x: 380, y: 279, width: 287, height: 110)
                    
                    self .firstbackin()
                    
            })

        }
        
        if self.pagecontroller.currentPage == 3 {
            self.label1.translatesAutoresizingMaskIntoConstraints = true
            self.label2.translatesAutoresizingMaskIntoConstraints = true
            self.label3.translatesAutoresizingMaskIntoConstraints = true
            
            forwardswipe.isEnabled = false
            
            UIView.animate(withDuration: 0.3,
                delay: 0,
                options: UIViewAnimationOptions.curveLinear,
                animations: {
                    
                    self.label1.frame = CGRect(x: -360,y: 103,width: 355,height: 76)
                    
                    
                }, completion: {
                    (value: Bool) in
                    
            })
            
            UIView.animate(withDuration: 0.3,
                delay: 0.2,
                options: UIViewAnimationOptions.curveLinear,
                animations: {
                    
                    self.label2.frame = CGRect(x: -250, y: 174, width: 246, height: 110)
                    
                    
                }, completion: {
                    (value: Bool) in
                    
            })
            
            UIView.animate(withDuration: 0.3,
                delay: 0.7,
                options: UIViewAnimationOptions.curveLinear,
                animations: {
                    
                    self.label3.frame = CGRect(x: -300, y: 279, width: 287, height: 110)
                    
                }, completion: {
                    (value: Bool) in
                    
                    self.label1.text = "That's Me!"
                    self.label2.text = "Enjoy my app"
                    self.label3.text = "and learning about my passion."
                    
                    self.label1.frame = CGRect(x: 380, y: 103, width: 355, height: 76)
                    self.label2.frame = CGRect(x: 380, y: 174, width: 246, height: 110)
                    self.label3.frame = CGRect(x: 380, y: 279, width: 287, height: 110)
                    
                    self .firstbackin()
                    
            })

            
        }
    }
    
    func firstbackin () {
        
        UIView.animate(withDuration: 0.3,
            delay: 0,
            options: UIViewAnimationOptions.curveLinear,
            animations: {
                
                self.label1.frame = CGRect(x: 10,y: 103,width: 355,height: 76)
                
                
            }, completion: {
                (value: Bool) in
                
        })
        
        UIView.animate(withDuration: 0.3,
            delay: 0.3,
            options: UIViewAnimationOptions.curveLinear,
            animations: {
                
                self.label2.frame = CGRect(x: 13, y: 174, width: 246, height: 110)
                
                
            }, completion: {
                (value: Bool) in
                
        })
        
        UIView.animate(withDuration: 0.3,
            delay: 0.8,
            options: UIViewAnimationOptions.curveLinear,
            animations: {

                self.label3.frame = CGRect(x: 13, y: 279, width: 287, height: 110)
                
                
            }, completion: {
                (value: Bool) in
                
        })

}

    
    
    @IBAction func changepageback (_ sender: AnyObject) {
        self.pagecontroller.currentPage = self.pagecontroller.currentPage - 1
        
        if self.pagecontroller.currentPage == 0 {
            self.label1.translatesAutoresizingMaskIntoConstraints = true
            self.label2.translatesAutoresizingMaskIntoConstraints = true
            self.label3.translatesAutoresizingMaskIntoConstraints = true
            
            backswipe.isEnabled = false
            
            UIView.animate(withDuration: 0.3,
                delay: 0,
                options: UIViewAnimationOptions.curveLinear,
                animations: {
                    
                    self.label1.frame = CGRect(x: 380, y: 103, width: 355, height: 76)
                    
                    
                    
                }, completion: {
                    (value: Bool) in
                    
            })
            
            UIView.animate(withDuration: 0.3,
                delay: 0.2,
                options: UIViewAnimationOptions.curveLinear,
                animations: {
                    
                    self.label2.frame = CGRect(x: 380, y: 174, width: 246, height: 110)
                    
                    
                    
                }, completion: {
                    (value: Bool) in
                    
            })
            
            UIView.animate(withDuration: 0.3,
                delay: 0.7,
                options: UIViewAnimationOptions.curveLinear,
                animations: {
                    
                    self.label3.frame = CGRect(x: 380, y: 279, width: 287, height: 110)
                    
                    
                    
                }, completion: {
                    (value: Bool) in
                    
                    self.label1.text = "Who am I?"
                    self.label2.text = "My name is Mitchell Sweet"
                    self.label3.text = "and I love to create iOS apps. "
                    
                    self.label1.frame = CGRect(x: -360,y: 103,width: 355,height: 76)
                    self.label2.frame = CGRect(x: -250, y: 174, width: 246, height: 110)
                    self.label3.frame = CGRect(x: -300, y: 279, width: 287, height: 110)
                    
                    self.firstbackin()
                    
            })
            
        }
        if self.pagecontroller.currentPage == 1 {
            self.label1.translatesAutoresizingMaskIntoConstraints = true
            self.label2.translatesAutoresizingMaskIntoConstraints = true
            self.label3.translatesAutoresizingMaskIntoConstraints = true
            
            UIView.animate(withDuration: 0.3,
                delay: 0,
                options: UIViewAnimationOptions.curveLinear,
                animations: {
                    
                    self.label1.frame = CGRect(x: 380, y: 103, width: 355, height: 76)
                    
                    
                    
                }, completion: {
                    (value: Bool) in
                    
            })
            
            UIView.animate(withDuration: 0.3,
                delay: 0.2,
                options: UIViewAnimationOptions.curveLinear,
                animations: {
                    
                    self.label2.frame = CGRect(x: 380, y: 174, width: 246, height: 110)
                    
                    
                    
                }, completion: {
                    (value: Bool) in
                    
            })
            
            UIView.animate(withDuration: 0.3,
                delay: 0.7,
                options: UIViewAnimationOptions.curveLinear,
                animations: {
                    
                    self.label3.frame = CGRect(x: 380, y: 279, width: 287, height: 110)
                    
                    
                    
                }, completion: {
                    (value: Bool) in
                    
                    self.label1.text = "I am 16 Years Old,"
                    self.label2.text = "I live in New York,"
                    self.label3.text = "and I go to Roslyn High School."
                    
                    self.label1.frame = CGRect(x: -360,y: 103,width: 355,height: 76)
                    self.label2.frame = CGRect(x: -250, y: 174, width: 246, height: 110)
                    self.label3.frame = CGRect(x: -300, y: 279, width: 287, height: 110)
                    
                    self.firstbackin()
                    
            })

            
        }
        if self.pagecontroller.currentPage == 2 {
            self.label1.translatesAutoresizingMaskIntoConstraints = true
            self.label2.translatesAutoresizingMaskIntoConstraints = true
            self.label3.translatesAutoresizingMaskIntoConstraints = true
            
            forwardswipe.isEnabled = true
            
            UIView.animate(withDuration: 0.3,
                delay: 0,
                options: UIViewAnimationOptions.curveLinear,
                animations: {
                    
                    self.label1.frame = CGRect(x: 380, y: 103, width: 355, height: 76)
                    
                    
                    
                }, completion: {
                    (value: Bool) in
                    
            })
            
            UIView.animate(withDuration: 0.3,
                delay: 0.2,
                options: UIViewAnimationOptions.curveLinear,
                animations: {
                    
                    self.label2.frame = CGRect(x: 380, y: 174, width: 246, height: 110)
                    
                    
                    
                }, completion: {
                    (value: Bool) in
                    
            })
            
            UIView.animate(withDuration: 0.3,
                delay: 0.7,
                options: UIViewAnimationOptions.curveLinear,
                animations: {
                    
                    self.label3.frame = CGRect(x: 380, y: 279, width: 287, height: 110)
                    
                    
                    
                }, completion: {
                    (value: Bool) in
                    
                    self.label1.text = "Other then developing,"
                    self.label2.text = "I love to ski and bike."
                    self.label3.text = "I ride the 5 Boro Bike Tour yearly."
                    
                    
                    self.label1.frame = CGRect(x: -360,y: 103,width: 355,height: 76)
                    self.label2.frame = CGRect(x: -250, y: 174, width: 246, height: 110)
                    self.label3.frame = CGRect(x: -300, y: 279, width: 287, height: 110)
                    
                    self.firstbackin()
                    
            })

            
        }
        if self.pagecontroller.currentPage == 3 {
            self.label1.translatesAutoresizingMaskIntoConstraints = true
            self.label2.translatesAutoresizingMaskIntoConstraints = true
            self.label3.translatesAutoresizingMaskIntoConstraints = true
            
            UIView.animate(withDuration: 0.3,
                delay: 0,
                options: UIViewAnimationOptions.curveLinear,
                animations: {
                    
                    self.label1.frame = CGRect(x: 380, y: 103, width: 355, height: 76)
                    
                    
                    
                }, completion: {
                    (value: Bool) in
                    
            })
            
            UIView.animate(withDuration: 0.3,
                delay: 0.2,
                options: UIViewAnimationOptions.curveLinear,
                animations: {
                    
                    self.label2.frame = CGRect(x: 380, y: 174, width: 246, height: 110)
                    
                    
                    
                }, completion: {
                    (value: Bool) in
                    
            })
            
            UIView.animate(withDuration: 0.3,
                delay: 0.7,
                options: UIViewAnimationOptions.curveLinear,
                animations: {
                    
                    self.label3.frame = CGRect(x: 380, y: 279, width: 287, height: 110)
                    
                    
                    
                }, completion: {
                    (value: Bool) in
                    
                    self.label1.text = "That's Me!"
                    self.label2.text = "Enjoy my app"
                    self.label3.text = "and learning about my passion."
                    
                    self.label1.frame = CGRect(x: -360,y: 103,width: 355,height: 76)
                    self.label2.frame = CGRect(x: -250, y: 174, width: 246, height: 110)
                    self.label3.frame = CGRect(x: -300, y: 279, width: 287, height: 110)
                    
                    self.firstbackin()
                    
            })

            
        }
    }
    
    
    func startit(){
        UIView.animate(withDuration: 0.5,
            delay: 0,
            options: UIViewAnimationOptions.curveLinear,
            animations: {
                self.badgelabel.alpha = 0;
                
            }, completion: {
                (value: Bool) in
                self.finishit()
        })
    }
    
    func finishit(){
        UIView.animate(withDuration: 0.3,
            delay: 0,
            options: UIViewAnimationOptions.curveLinear,
            animations: {
                self.badgepic.translatesAutoresizingMaskIntoConstraints = true
                self.badgepic.frame = CGRect(x: 339,y: 6,width: 26,height: 43)
                
            }, completion: {
                (value: Bool) in
                //self.finishit()
        })

    }
    
    
    override func viewWillDisappear(_ animated: Bool) {
        
        
        
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
