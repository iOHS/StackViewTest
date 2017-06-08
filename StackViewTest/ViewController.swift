//
//  ViewController.swift
//  StackViewTest
//
//  Created by OHSEUNGWOOK on 2017. 6. 8..
//  Copyright © 2017년 OHSEUNGWOOK. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var cupStackView: UIStackView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func addCup(_ sender: Any) {

        guard self.cupStackView.arrangedSubviews.count == 0 else {
            return;
        }

        let redCupImgView = UIImageView(image: UIImage(named: "RedCoffeeCup"))
        redCupImgView.contentMode = .scaleAspectFit

        UIView.animate(withDuration: 0.75) { 
            self.cupStackView.addArrangedSubview(redCupImgView)
            self.cupStackView.layoutIfNeeded()
        }
    }

    @IBAction func removeCup(_ sender: Any) {
        guard self.cupStackView.arrangedSubviews.count > 0 else {
            return;
        }

        if let lastView = self.cupStackView.arrangedSubviews.last {
            self.cupStackView.removeArrangedSubview(lastView)
            lastView.removeFromSuperview()
            self.cupStackView.layoutIfNeeded()
        }
    }
}

