//
//  ViewController.swift
//  Navinavi
//
//  Created by Toshiaki Nakamura on 2017/03/22.
//  Copyright © 2017年 Toshiaki Nakamura. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func comebackToViewController(segue: UIStoryboardSegue){
        print("I'll be back.")
    }
}

