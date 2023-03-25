//
//  DescriptionPizzaViewController.swift
//  ProjectPizzaClosureThree
//
//  Created by Mirian Santana on 24/03/23.
//

import UIKit
import SDWebImage

class DescriptionPizzaViewController: UIViewController {
    
    @IBOutlet weak var lblNamePizza: UILabel!
    @IBOutlet weak var imagePizza: UIImageView!
    @IBOutlet weak var lblPizzaP: UILabel!
    @IBOutlet weak var lblPizzaM: UILabel!
    @IBOutlet weak var lblPizzaG: UILabel!
    
    var descriptionPizza: PizzaElement?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        lblNamePizza.text = descriptionPizza?.name ?? ""
        lblPizzaP.text = "PEQUENA - \(descriptionPizza?.priceP ?? 0.0)"
        lblPizzaM.text = "MÉDIA - \(descriptionPizza?.priceM ?? 0.0)"
        lblPizzaG.text = "GRANDE - \(descriptionPizza?.priceG ?? 0.0)"
        let urlImage = URL(string: descriptionPizza?.imageURL ?? "")
        imagePizza.sd_setImage(with: urlImage)
    }
    
    @IBAction func btAdvance(_ sender: Any) {
        if let screen = self.storyboard?.instantiateViewController(withIdentifier: "ratingPizza") as? RatingPizzaViewController {
            
            screen.ratingPizza = descriptionPizza
            
            self.present(screen, animated: true)
            
        }
    }
    
    @IBAction func btBack(_ sender: Any) {
        self.dismiss(animated: true)
    }
}
