//
//  ViewController.swift
//  SingleCard-C
//
//  Created by Trevor Walker on 7/2/19.
//  Copyright © 2019 Trevor Walker. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var cardImage: UIImageView!
    @IBOutlet weak var cardSuit: UILabel!
    @IBOutlet weak var cardvalue: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func drawCard(_ sender: Any) {
        CardController.fetchCard { (card) in
            DispatchQueue.main.async {
                guard let url = URL(string: card.image)
                    , let data = try? Data(contentsOf: url) else {return}
                self.cardImage.image = UIImage(data: data)
                self.cardSuit.text = card.suit
                self.cardvalue.text = card.value
            }
        }
    }
}
