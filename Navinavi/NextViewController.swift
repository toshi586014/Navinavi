//
//  NextViewController.swift
//  Navinavi
//
//  Created by Toshiaki Nakamura on 2017/03/22.
//  Copyright © 2017年 Toshiaki Nakamura. All rights reserved.
//

import UIKit

enum Mode {
    case back
    case save
}

class NextViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var inputTextField: UITextField!
    @IBOutlet weak var touchItem: UIBarButtonItem!
    var mode = Mode.back

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.inputTextField.delegate = self
        self.changeItemTitle()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func touchitem(_ sender: Any) {
        switch self.mode {
        case .back:
            self.performSegue(withIdentifier: "toViewController", sender: self)
        case .save:
            print("Save the world.")
        }
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        self.mode = .save
        self.changeItemTitle()
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        self.mode = .back
        self.changeItemTitle()
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    private func changeItemTitle() {
        switch self.mode {
        case .back:
            self.touchItem.title = "Back"
        case .save:
            self.touchItem.title = "Save"
        }
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
