//
//  SeguePresentViewController.swift
//  ScreenTransitionExample
//
//  Created by 최종선 on 2021/12/07.
//

import UIKit

class SeguePresentViewController: ViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func tabBackButton(_ sender: UIButton) {
        self.presentingViewController?.dismiss(animated: true, completion: nil)
    }
}
