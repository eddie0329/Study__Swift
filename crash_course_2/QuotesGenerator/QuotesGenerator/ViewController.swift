//
//  ViewController.swift
//  QuotesGenerator
//
//  Created by 최종선 on 2021/12/05.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var quoteLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    
    let quotes = [
        Quote(contents: "죽음을 두려워하는 나머지 삶은 시작조차 못하는 사람이 많다.", name: "벤다이크"),
        Quote(contents: "나는 나 자신을 뺴 놓고는 모두 안다.", name: "비용"),
        Quote(contents: "편견이란 실효성이 없는 의견이다.", name: "암브로스 빌"),
        Quote(contents: "분노는 바보들의 가슴속에서만 살아간다.", name: "아인슈타인"),
        Quote(contents: "몇 번이라도 좋다! 이 끔찍한 생이여...다시", name: "니체"),
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setLabel(contents: quotes[0].contents, name: quotes[0].name)
    }
    
    func setLabel(contents: String, name: String) {
        self.quoteLabel.text = contents
        self.nameLabel.text = "by \(name)"
    }
    

    @IBAction func tapQuoteGeneratorButton(_ sender: UIButton) {
        let random = Int(arc4random_uniform(5)) // 0 ~ 4 사이의 난수를 발생
        let quote = quotes[random]
        setLabel(contents: quote.contents, name: quote.name)
    }
}

