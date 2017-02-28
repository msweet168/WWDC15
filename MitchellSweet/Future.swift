//
//  Future.swift
//  MitchellSweet
//
//  Created by Mitchell Sweet on 4/16/15.
//  Copyright (c) 2015 Mitchell Sweet. All rights reserved.
//

import UIKit

class Future: UIViewController {
    
    @IBOutlet weak var verticalslider: UISlider!
    @IBOutlet weak var verticalslider2: UISlider!
    @IBOutlet weak var sidelabel: UILabel!
    @IBOutlet weak var sidelabel2: UILabel!
    @IBOutlet weak var toplabel: UILabel!
    @IBOutlet weak var toplabel2: UILabel!
    @IBOutlet weak var textview: UITextView!
    @IBOutlet weak var textview2: UITextView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        UserDefaults.standard .set(true, forKey: "comingfromfuture")
        
        verticalslider.isHidden = false
        verticalslider2.isHidden = false
        
        
        verticalslider.transform = CGAffineTransform(rotationAngle: CGFloat(M_PI * -0.5))
        verticalslider2.transform = CGAffineTransform(rotationAngle: CGFloat(M_PI * -0.5))
        sidelabel.transform = CGAffineTransform(rotationAngle: CGFloat(M_PI * -0.5))
        sidelabel2.transform = CGAffineTransform(rotationAngle: CGFloat(M_PI * 0.5))
        
        

        // Do any additional setup after loading the view.
    }

    override func viewWillDisappear(_ animated: Bool) {
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func rightslide(_ sender: UISlider) {
        verticalslider2 .setValue(verticalslider.value, animated: true)
        
        if verticalslider.value >= 0.5 {
            
            UIView.animate(withDuration: 0.5,
                delay: 0,
                options: UIViewAnimationOptions.curveLinear,
                animations: {
                    self.toplabel.alpha = 1
                    self.toplabel2.alpha = 0
                    self.textview.alpha = 1
                    self.textview2.alpha = 0
                    
                }, completion: nil)
    
        }
        else if verticalslider.value < 0.5 {
            
            UIView.animate(withDuration: 0.5,
                delay: 0,
                options: UIViewAnimationOptions.curveLinear,
                animations: {
                    self.toplabel.alpha = 0
                    self.toplabel2.alpha = 1
                    self.textview.alpha = 0
                    self.textview2.alpha = 1
                    
                }, completion: nil)

        }
        
    }

    @IBAction func leftslide(_ sender: UISlider) {
        verticalslider .setValue(verticalslider2.value, animated: true)
        
        if verticalslider.value >= 0.5 {
            UIView.animate(withDuration: 0.5,
                delay: 0,
                options: UIViewAnimationOptions.curveLinear,
                animations: {
                    self.toplabel.alpha = 1
                    self.toplabel2.alpha = 0
                    self.textview.alpha = 1
                    self.textview2.alpha = 0
                    
                }, completion: nil)

            
        }
        else if verticalslider.value < 0.5 {
            UIView.animate(withDuration: 0.5,
                delay: 0,
                options: UIViewAnimationOptions.curveLinear,
                animations: {
                    self.toplabel.alpha = 0
                    self.toplabel2.alpha = 1
                    self.textview.alpha = 0
                    self.textview2.alpha = 1
                    
                }, completion: nil)

            
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
