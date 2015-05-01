//
//  MainViewController.swift
//  SpeedTrig
//
//  Created by SmartPhoneClub on 4/17/15.
//  Copyright (c) 2015 SmartPhoneClub. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    var quizType:QuizType = QuizType.REGULAR;
    var goToGame:Bool=true;

    override func viewDidLoad() {
        super.viewDidLoad()
        println("HI")
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if(segue.identifier=="toGame"){
            let vc=segue.destinationViewController as ResponseViewController
            println("About to segue")
            //vc.mode = quizType;
        }
    }

}

enum QuizType{
    case REGULAR,INVERSE,CUSTOM
}
