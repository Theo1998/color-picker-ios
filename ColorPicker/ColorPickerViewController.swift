//
//  ColorPickerViewController.swift
//  ColorPicker
//
//  Created by lpiem on 24/01/2019.
//  Copyright © 2019 lpiem. All rights reserved.
//

import UIKit

class ColorPickerViewController: UIViewController {

    var completionHandler: ((UIColor) -> ())!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func greenButton(_ sender: Any) {
        completionHandler(ColorAsset.green.color)
    } 
    
    @IBAction func orangeButton(_ sender: Any) {
        completionHandler(ColorAsset.orange.color)
    }
    
    @IBAction func purpleButton(_ sender: Any) {
        completionHandler(ColorAsset.purple.color)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
