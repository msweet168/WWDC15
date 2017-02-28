//
//  present.swift
//  MitchellSweet
//
//  Created by Mitchell Sweet on 4/16/15.
//  Copyright (c) 2015 Mitchell Sweet. All rights reserved.
//

import UIKit

class present: UIViewController,UIScrollViewDelegate {

    @IBOutlet weak var interestsslider: UISlider!
    @IBOutlet weak var skillsslider: UISlider!
    @IBOutlet weak var skillscroll: UIScrollView!
    @IBOutlet weak var interestscroll: UIScrollView!
    
    
    var skillview: UIView!
    var interestview: UIView!


    override func viewDidLoad() {
        super.viewDidLoad()
        
        UserDefaults.standard .set(true, forKey: "comingfrompresent")
        
        skillscroll.delegate = self
        interestscroll.delegate = self
        
        
        
        skillview = Bundle.main.loadNibNamed("Viewskill", owner: nil, options: nil)?[0] as! UIView
        interestview = Bundle.main.loadNibNamed("viewinterests", owner: nil, options: nil)?[0] as! UIView

        self.skillscroll .addSubview(skillview)
        self.interestscroll.addSubview(interestview)
        
        skillscroll.contentSize = CGSize(width: 0, height: skillview.frame.size.height)
        interestscroll.contentSize = CGSize(width: 0, height: interestview.frame.size.height)

        // Do any additional setup after loading the view.
    }
    
    
    override func viewWillDisappear(_ animated: Bool) {
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func slideinterests(_ sender: UISlider) {
        
        let interestvalue = (sender.value)
        skillsslider .setValue(-interestvalue + 1, animated: true)
        
    }

    
    @IBAction func skillsslider(_ sender: UISlider) {
        
        let skillsvalue = (sender.value)
        interestsslider .setValue(-skillsvalue + 1, animated: true)
        
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
