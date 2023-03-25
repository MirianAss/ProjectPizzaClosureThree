//
//  RatingPizzaViewController.swift
//  ProjectPizzaClosureThree
//
//  Created by Mirian Santana on 24/03/23.
//

import UIKit

class RatingPizzaViewController: UIViewController {
    
    var ratingPizza: PizzaElement?

    @IBOutlet weak var lblNamePizza: UILabel!
    @IBOutlet weak var lblRating: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        lblNamePizza.text = ratingPizza?.name ?? ""
        lblRating.text = "Segundo nossos clientes, a pizza \(ratingPizza?.name ?? "") está na posição - \(ratingPizza?.rating ?? 0)/5 - de aprovação"    }
    
    @IBAction func btBack(_ sender: Any) {
        self.dismiss(animated: true)
    }

}
