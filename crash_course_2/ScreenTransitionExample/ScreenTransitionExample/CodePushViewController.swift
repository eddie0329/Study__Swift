//
//  CodePushViewController.swift
//  ScreenTransitionExample
//
//  Created by 최종선 on 2021/12/07.
//

import UIKit

class CodePushViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    
    var name: String?
    override func viewDidLoad() {
        super.viewDidLoad()
        if let name = name {
            self.nameLabel.text = name
            self.nameLabel.sizeToFit()
        }
    }
    
    @IBAction func tabBackButton(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    
}
