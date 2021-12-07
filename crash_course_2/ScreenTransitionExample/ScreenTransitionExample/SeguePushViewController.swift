//
//  SeguePushViewController.swift
//  ScreenTransitionExample
//
//  Created by 최종선 on 2021/12/06.
//

import UIKit

class SeguePushViewController: UIViewController {
    
    @IBOutlet weak var nameLabel: UILabel!
    var name:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("segue push: viewDidLoad")
        if let name = name {
            self.nameLabel.text = name
            self.nameLabel.sizeToFit()
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("segue push: viewWillAppear")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("segue push: viewDidAppear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("segue push:  viewWillDisappear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("segue push: viewDidDisappear")
    }
    
    @IBAction func tabBackButton(_ sender: UIButton) {
//        self.navigationController?.popViewController(animated: true)
        self.navigationController?.popToRootViewController(animated: true)
    }
}
