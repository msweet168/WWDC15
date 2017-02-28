//
//  ViewController.swift
//  MitchellSweet
//
//  Created by Mitchell Sweet on 4/14/15.
//  Copyright (c) 2015 Mitchell Sweet. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var firstbutton: UIButton!
    @IBOutlet weak var menubackground: UIImageView!
    @IBOutlet weak var mecircle: UIImageView!
    @IBOutlet weak var mitchell: UILabel!
    @IBOutlet weak var sweet: UILabel!
    //@IBOutlet weak var hello: UILabel!
    //@IBOutlet weak var iam: UILabel!
    //@IBOutlet weak var welcome: UILabel!
    @IBOutlet weak var past: UIButton!
    @IBOutlet weak var present: UIButton!
    @IBOutlet weak var future: UIButton!;
    @IBOutlet weak var info: UIButton!;
    @IBOutlet weak var menubackgroundcover: UIImageView!;
    @IBOutlet weak var wwdc15: UILabel!;
    @IBOutlet weak var redupulsering: UIImageView!
    @IBOutlet weak var bluepulsering: UIImageView!
    @IBOutlet weak var greenpulsering: UIImageView!
    @IBOutlet weak var purplepulsering: UIImageView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
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
        menubackground.addMotionEffect(group)
        menubackgroundcover.addMotionEffect(group)
        mecircle.addMotionEffect(group)
        
        
        if UserDefaults.standard .bool(forKey: "firsttime") {
        
        Timer.scheduledTimer(timeInterval: 1.5, target: self, selector: #selector(ViewController.menusetload), userInfo: nil, repeats: false)
        firstbutton.alpha = 0
        mecircle.alpha = 0
        mitchell.alpha = 0
        sweet.alpha = 0
//        hello.alpha = 0
//        iam.alpha = 0
//        welcome.alpha = 0
        past.alpha = 0
        present.alpha = 0
        future.alpha = 0
        info.alpha = 0
        wwdc15.alpha = 0
        redupulsering.alpha = 0
            bluepulsering.alpha = 0
            greenpulsering.alpha = 0
            purplepulsering.alpha = 0
        
         Timer.scheduledTimer(timeInterval: 2.5, target: self, selector: #selector(ViewController.showbutton1), userInfo: nil, repeats: false)
            
            UserDefaults.standard .set(false, forKey: "firsttime")
    
        }
        else
        {
            
            
            let visualEffectView = UIVisualEffectView(effect: UIBlurEffect(style: .dark)) as UIVisualEffectView
            visualEffectView.frame = self.menubackground.bounds
            self.menubackground.addSubview(visualEffectView)
            menubackground.alpha = 1
            menubackgroundcover.alpha = 0
            
            self.mecircle.layer.cornerRadius = self.mecircle.frame.height / 2
            self.mecircle.clipsToBounds = true
            
            Timer.scheduledTimer(timeInterval: 2, target: self, selector: #selector(ViewController.restartanimate), userInfo: nil, repeats: false)
            
            if UserDefaults.standard .bool(forKey: "comingfromwhoiam") {
            
            //self.firstbutton.setTranslatesAutoresizingMaskIntoConstraints(true)
            self.firstbutton.frame = CGRect(x: 32,y: 219,width: 250,height: 250)
            self.past.alpha = 0
            self.present.alpha = 0
            self.future.alpha = 0
                self.redupulsering.alpha = 0
                self.bluepulsering.alpha = 0
                self.greenpulsering.alpha = 0
                self.purplepulsering.alpha = 0
                
            self.firstbutton.alpha = 0.1
            
            Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(ViewController.backfromwhoiam), userInfo: nil, repeats: false)
                
                UserDefaults.standard .set(false, forKey: "comingfromwhoiam")
                
                print("comingfromwhoiam")
                
            }
            
            if UserDefaults.standard .bool(forKey: "comingfrompast") {
                
                //self.past.setTranslatesAutoresizingMaskIntoConstraints(true)
                self.past.frame = CGRect(x: 32,y: 219,width: 250,height: 250)
                self.past.alpha = 0.1
                self.present.alpha = 0
                self.future.alpha = 0
                self.firstbutton.alpha = 0
                self.redupulsering.alpha = 0
                self.bluepulsering.alpha = 0
                self.greenpulsering.alpha = 0
                self.purplepulsering.alpha = 0
                
                
                Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(ViewController.backfrompast), userInfo: nil, repeats: false)
                
                UserDefaults.standard .set(false, forKey: "comingfrompast")
                
                print("comingfrompast")
            }
            
            if UserDefaults.standard .bool(forKey: "comingfrompresent") {
                
            
                //self.present.setTranslatesAutoresizingMaskIntoConstraints(true)
                self.present.frame = CGRect(x: 32,y: 219,width: 250,height: 250)
                self.past.alpha = 0
                self.present.alpha = 0.1
                self.future.alpha = 0
                self.firstbutton.alpha = 0
                self.redupulsering.alpha = 0
                self.bluepulsering.alpha = 0
                self.greenpulsering.alpha = 0
                self.purplepulsering.alpha = 0

                
                Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(ViewController.backfrompresent), userInfo: nil, repeats: false)
            
                UserDefaults.standard .set(false, forKey: "comingfrompresent")
                
                print("coming from present")
            }
            
            if UserDefaults.standard .bool(forKey: "comingfromfuture") {
                
                //self.future.setTranslatesAutoresizingMaskIntoConstraints(true)
                self.future.frame = CGRect(x: 32,y: 219,width: 250,height: 250)
                self.past.alpha = 0
                self.present.alpha = 0
                self.future.alpha = 0.1
                self.firstbutton.alpha = 0
                self.redupulsering.alpha = 0
                self.bluepulsering.alpha = 0
                self.greenpulsering.alpha = 0
                self.purplepulsering.alpha = 0

                //They used to al be like this
                var timer5 = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(ViewController.backfromfuture), userInfo: nil, repeats: false)
                
                UserDefaults.standard .set(false, forKey: "comingfromfuture")
                
                print("coming from future")
            }
        
        
    }
}
    
    func backfromwhoiam(){
        UIView.animate(withDuration: 0.3,
            delay: 0,
            options: UIViewAnimationOptions.curveLinear,
            animations: {
                //self.firstbutton.setTranslatesAutoresizingMaskIntoConstraints(true)
                self.firstbutton.frame = CGRect(x: 32,y: 216,width: 103,height: 103)
                self.past.alpha = 1
                self.present.alpha = 1
                self.future.alpha = 1
                self.firstbutton.alpha = 1
                
                
                
            }, completion: {
                (value: Bool) in
                
                self.redupulsering.alpha = 1
                self.bluepulsering.alpha = 1
                self.greenpulsering.alpha = 1
                self.purplepulsering.alpha = 1
                
        })
        
    }
    
    func backfrompast(){
        UIView.animate(withDuration: 0.3,
            delay: 0,
            options: UIViewAnimationOptions.curveLinear,
            animations: {
                //self.past.setTranslatesAutoresizingMaskIntoConstraints(true)
                self.past.frame = CGRect(x: 180,y: 269,width: 103,height: 103)
                self.past.alpha = 1
                self.present.alpha = 1
                self.future.alpha = 1
                self.firstbutton.alpha = 1
                //self .pulses()
                
                
            }, completion: {
                (value: Bool) in
                
                self.redupulsering.alpha = 1
                self.bluepulsering.alpha = 1
                self.greenpulsering.alpha = 1
                self.purplepulsering.alpha = 1
                
        })


    }
    
    func backfrompresent(){
        UIView.animate(withDuration: 0.3,
            delay: 0,
            options: UIViewAnimationOptions.curveLinear,
            animations: {
                //self.present.setTranslatesAutoresizingMaskIntoConstraints(true)
                self.present.frame = CGRect(x: 32,y: 350,width: 103,height: 103)
                self.past.alpha = 1
                self.present.alpha = 1
                self.future.alpha = 1
                self.firstbutton.alpha = 1
                //self .pulses()
                
                
            }, completion: {
                (value: Bool) in
                
                self.redupulsering.alpha = 1
                self.bluepulsering.alpha = 1
                self.greenpulsering.alpha = 1
                self.purplepulsering.alpha = 1
                
            })


    }
    
    func backfromfuture(){
        UIView.animate(withDuration: 0.3,
            delay: 0,
            options: UIViewAnimationOptions.curveLinear,
            animations: {
                //self.future.setTranslatesAutoresizingMaskIntoConstraints(true)
                self.future.frame = CGRect(x: 180,y: 415,width: 103,height: 103)
                self.past.alpha = 1
                self.present.alpha = 1
                self.future.alpha = 1
                self.firstbutton.alpha = 1
                //self .pulses()
                
                
            }, completion: {
                (value: Bool) in
                
                self.redupulsering.alpha = 1
                self.bluepulsering.alpha = 1
                self.greenpulsering.alpha = 1
                self.purplepulsering.alpha = 1
                
        })


        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func menusetload () {
        
    UIView.animate(withDuration: 1,
            delay: 0,
            options: UIViewAnimationOptions.curveLinear,
            animations: {
            self.mecircle.alpha = 1
            //self.firstbutton.alpha = 1
            self.mitchell.alpha = 1
            self.sweet.alpha = 1
//                self.hello.alpha = 1
//                self.iam.alpha = 1
//                self.welcome.alpha = 1
        
            }, completion: nil)
    
    let visualEffectView = UIVisualEffectView(effect: UIBlurEffect(style: .dark)) as UIVisualEffectView
    visualEffectView.frame = self.menubackground.bounds
    self.menubackground.addSubview(visualEffectView)
        
        
        UIView.animate(withDuration: 1,
            delay: 0,
            options: UIViewAnimationOptions.curveLinear,
            animations: {
                self.menubackgroundcover.alpha = 0
                self.menubackground.alpha = 1
                
            }, completion: nil)

        
        
    self.mecircle.layer.cornerRadius = self.mecircle.frame.height / 2
    self.mecircle.clipsToBounds = true

    
    }
    
    func showbutton1 () {
        UIView.animate(withDuration: 1,
            delay: 0,
            options: UIViewAnimationOptions.curveLinear,
            animations: {
                self.firstbutton.alpha = 1;
                
            }, completion: {
                (value: Bool) in
                
                self.redupulsering.alpha = 1;
                
                
        })

        
        var timer2 = Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(ViewController.showbutton2), userInfo: nil, repeats: false)


    }
    
    func showbutton2 () {
        UIView.animate(withDuration: 1,
            delay: 0,
            options: UIViewAnimationOptions.curveLinear,
            animations: {
                self.past.alpha = 1;
                
            }, completion: {
                (value: Bool) in
                
                self.bluepulsering.alpha = 1;
                
        })

        
        
        var timer2 = Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(ViewController.showbutton3), userInfo: nil, repeats: false)

    }
    func showbutton3 (){
        UIView.animate(withDuration: 1,
            delay: 0,
            options: UIViewAnimationOptions.curveLinear,
            animations: {
                self.present.alpha = 1;
                
            }, completion: {
                (value: Bool) in
                
                self.greenpulsering.alpha = 1;
                
                
        })

        
        
        var timer2 = Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(ViewController.showbutton4), userInfo: nil, repeats: false)
    }
    
    func showbutton4 () {
        UIView.animate(withDuration: 1,
            delay: 0,
            options: UIViewAnimationOptions.curveLinear,
            animations: {
                self.future.alpha = 1;
                
            }, completion: {
                (value: Bool) in
                
                self.purplepulsering.alpha = 1;
        
        })

        
        var timer2 = Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(ViewController.showbutton5), userInfo: nil, repeats: false)

    }
    
    func showbutton5 () {
        UIView.animate(withDuration: 1,
            delay: 0,
            options: UIViewAnimationOptions.curveLinear,
            animations: {
                self.info.alpha = 1
                self.wwdc15.alpha = 1
                
            }, completion: nil)
        
        self .pulses()

    }
    

    @IBAction func whoiam(_ sender: AnyObject) {
        
        redupulsering.layer.removeAllAnimations()
        greenpulsering.layer.removeAllAnimations()
        purplepulsering.layer.removeAllAnimations()
        bluepulsering.layer.removeAllAnimations()
        
        self.redupulsering.alpha = 0
        self.bluepulsering.alpha = 0
        self.greenpulsering.alpha = 0
        self.purplepulsering.alpha = 0
        
        UIView.animate(withDuration: 0.3,
            delay: 0,
            options: UIViewAnimationOptions.curveLinear,
            animations: {
                //self.firstbutton.setTranslatesAutoresizingMaskIntoConstraints(true)
                self.firstbutton.frame = CGRect(x: 32,y: 219,width: 250,height: 250)
                self.past.alpha = 0
                self.present.alpha = 0
                self.future.alpha = 0
                self.firstbutton.alpha = 0.1

                
                
            }, completion: {
                (value: Bool) in
                self.gotowhoiam()
        })
        
    
    }
    
    func gotowhoiam () {
        
        self .performSegue(withIdentifier: "whoiam", sender: self)
        
    }
    
    
    @IBAction func tothepast(_ sender: AnyObject) {
        
        
        redupulsering.layer.removeAllAnimations()
        greenpulsering.layer.removeAllAnimations()
        purplepulsering.layer.removeAllAnimations()
        bluepulsering.layer.removeAllAnimations()
        
        self.redupulsering.alpha = 0
        self.bluepulsering.alpha = 0
        self.greenpulsering.alpha = 0
        self.purplepulsering.alpha = 0

        
        UIView.animate(withDuration: 0.3,
            delay: 0,
            options: UIViewAnimationOptions.curveLinear,
            animations: {
                //self.past.setTranslatesAutoresizingMaskIntoConstraints(true)
                self.past.frame = CGRect(x: 32,y: 219,width: 250,height: 250)
                self.past.alpha = 0.1
                self.present.alpha = 0
                self.future.alpha = 0
                self.firstbutton.alpha = 0
    
                
            }, completion: {
                (value: Bool) in
                self.gotothepast()
        })

    }
    
    func gotothepast () {
        
        self .performSegue(withIdentifier: "Past", sender: self)
    }

    @IBAction func tothepresent(_ sender: AnyObject) {
        
        redupulsering.layer.removeAllAnimations()
        greenpulsering.layer.removeAllAnimations()
        purplepulsering.layer.removeAllAnimations()
        bluepulsering.layer.removeAllAnimations()
        
        self.redupulsering.alpha = 0
        self.bluepulsering.alpha = 0
        self.greenpulsering.alpha = 0
        self.purplepulsering.alpha = 0
        
        UIView.animate(withDuration: 0.3,
            delay: 0,
            options: UIViewAnimationOptions.curveLinear,
            animations: {
                //self.present.setTranslatesAutoresizingMaskIntoConstraints(true)
                self.present.frame = CGRect(x: 32,y: 219,width: 250,height: 250)
                self.past.alpha = 0
                self.present.alpha = 0.1
                self.future.alpha = 0
                self.firstbutton.alpha = 0
                
                
            }, completion: {
                (value: Bool) in
                self.gotothepresent()
        })

        
    }
    
    func gotothepresent (){
        
        self .performSegue(withIdentifier: "Present", sender: self)
    }
    
    @IBAction func tothefuture(_ sender: AnyObject){
        
        redupulsering.layer.removeAllAnimations()
        greenpulsering.layer.removeAllAnimations()
        purplepulsering.layer.removeAllAnimations()
        bluepulsering.layer.removeAllAnimations()
        
        self.redupulsering.alpha = 0
        self.bluepulsering.alpha = 0
        self.greenpulsering.alpha = 0
        self.purplepulsering.alpha = 0

        
        UIView.animate(withDuration: 0.3,
            delay: 0,
            options: UIViewAnimationOptions.curveLinear,
            animations: {
                //self.future.setTranslatesAutoresizingMaskIntoConstraints(true)
                self.future.frame = CGRect(x: 32,y: 219,width: 250,height: 250)
                self.past.alpha = 0
                self.present.alpha = 0
                self.future.alpha = 0.1
                
            }, completion: {
                (value: Bool) in
                self.gotothefuture()
        })

        
        
    }
    
    func gotothefuture () {
        
        self .performSegue(withIdentifier: "Future", sender: self)

    }
    
    override func viewWillDisappear(_ animated: Bool) {
        self.redupulsering.isHidden = true
        self.bluepulsering.isHidden = true
        self.greenpulsering.isHidden = true
        self.purplepulsering.isHidden = true
    }
    
    func restartanimate () {
        self.pulses()
        
        self.firstbutton.isHidden = false
        self.redupulsering.isHidden = false
        self.bluepulsering.isHidden = false
        self.greenpulsering.isHidden = false
        self.purplepulsering.isHidden = false
    }
    
    func pulses () {
        
        self.redupulsering.alpha = 1
        UIView.animate(withDuration: 1.5,
            delay: 0.5,
            options: UIViewAnimationOptions.curveLinear,
            animations: {
                //self.redupulsering.setTranslatesAutoresizingMaskIntoConstraints(true)
                self.redupulsering.frame = CGRect(x: 11,y: 196,width: 144,height: 144)
                self.redupulsering.alpha = 0
                
                
            }, completion: {
                (value: Bool) in
                
                self.bluepulses()
                self.redupulsering.frame = CGRect(x: 35,y: 219,width: 97,height: 97)
                
                
        })


    }
    
    func bluepulses () {
        
        self.bluepulsering.alpha = 0.8
        UIView.animate(withDuration: 1.5,
            delay: 0.5,
            options: UIViewAnimationOptions.curveLinear,
            animations: {
                //self.bluepulsering.setTranslatesAutoresizingMaskIntoConstraints(true)
                self.bluepulsering.frame = CGRect(x: 159,y: 249,width: 144,height: 144)
                self.bluepulsering.alpha = 0
                
                
            }, completion: {
                (value: Bool) in
                
                self.greenpulses()
                self.bluepulsering.frame = CGRect(x: 183,y: 272,width: 97,height: 97)
        })

        
    }
    
    func greenpulses () {
        
        self.greenpulsering.alpha = 0.8
        UIView.animate(withDuration: 1.5,
            delay: 0.5,
            options: UIViewAnimationOptions.curveLinear,
            animations: {
                //self.greenpulsering.setTranslatesAutoresizingMaskIntoConstraints(true)
                self.greenpulsering.frame = CGRect(x: 11,y: 330,width: 144,height: 144)
                self.greenpulsering.alpha = 0
                
                
            }, completion: {
                (value: Bool) in
                
                self.purplepulses()
                self.greenpulsering.frame = CGRect(x: 35,y: 353,width: 97,height: 97)
                
        })
        

        
    }
    
    func purplepulses () {
        
        self.purplepulsering.alpha = 0.8
        UIView.animate(withDuration: 1.5,
            delay: 0.5,
            options: UIViewAnimationOptions.curveLinear,
            animations: {
                //self.purplepulsering.setTranslatesAutoresizingMaskIntoConstraints(true)
                self.purplepulsering.frame = CGRect(x: 159,y: 395,width: 144,height: 144)
                self.purplepulsering.alpha = 0
                
                
            }, completion: {
                (value: Bool) in
                
                self.pulses()
                self.purplepulsering.frame = CGRect(x: 182,y: 417,width: 97,height: 97)
                
        })
        
    }
    
    
    @IBAction func infobutton (_ sender: AnyObject) {
        let alert = UIAlertController(title: "Mitchell Sweet", message: "Created for WWDC 2015, Thank you for your consideration.", preferredStyle: UIAlertControllerStyle.alert)
        alert.addAction(UIAlertAction(title: "Dismiss", style: UIAlertActionStyle.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
        
        alert.addAction(UIAlertAction(title: "Website", style: .default, handler: { action in
            switch action.style{
            case .default:
                UIApplication.shared .openURL(URL(string: "http://www.sweetdevelop.com")!)
                
            case .cancel:
                print("cancel")
                
            case .destructive:
                print("destructive")
            }
        }))
        
        alert.addAction(UIAlertAction(title: "Facebook", style: .default, handler: { action in
            switch action.style{
            case .default:
                    UIApplication.shared .openURL(URL(string: "http://www.facebook.com/pages/Sweet-Development/240406962809927")!)
                
            case .cancel:
                print("cancel")
                
            case .destructive:
                print("destructive")
            }
        }))
        
        alert.addAction(UIAlertAction(title: "Twitter", style: .default, handler: { action in
            switch action.style{
            case .default:
                UIApplication.shared .openURL(URL(string: "http://twitter.com/sweetdev168")!)
            case .cancel:
                print("cancel")
                
            case .destructive:
                print("destructive")
            }
        }))
        
        alert.addAction(UIAlertAction(title: "You Tube", style: .default, handler: { action in
            switch action.style{
            case .default:
                
                UIApplication.shared .openURL(URL(string: "https://www.youtube.com/channel/UCo0bIBlWQyciqyJQH4nk7Tg")!)
            case .cancel:
                print("cancel")
                
            case .destructive:
                print("destructive")
            }
        }))



        

        
    }
    
}

