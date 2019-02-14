//
//  ViewController.swift
//  ColorPicker
//
//  Created by lpiem on 24/01/2019.
//  Copyright © 2019 lpiem. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "pickColor") {
            let controller = segue.destination as! ColorPickerViewController
            controller.completionHandler = userDidChooseColor
        }
    }
}

extension ViewController {
    func userDidChooseColor(color: UIColor) {
        dismiss(animated: true, completion: nil)
        
        let previousColor = view.backgroundColor
        self.view.backgroundColor = color
        let alert = UIAlertController(title: "Couleur", message: "Garder cette couleur ?", preferredStyle: UIAlertController.Style.alert)
        
        alert.addAction(UIAlertAction(title: "Oui", style: UIAlertAction.Style.default, handler: nil))
        alert.addAction(UIAlertAction(title: "Non", style: UIAlertAction.Style.cancel, handler: { action in
            switch action.style{
            case .default:
                print("default")
            case .cancel:
                UIView.animate(withDuration: 1, animations: {
                    self.view.backgroundColor = previousColor
                })
            case .destructive:
                print("destructive")
            }}))
        
        self.present(alert, animated: true, completion: nil)
    }
}
