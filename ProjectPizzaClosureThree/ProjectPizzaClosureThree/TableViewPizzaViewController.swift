//
//  TableViewPizzaViewController.swift
//  ProjectPizzaClosureThree
//
//  Created by Mirian Santana on 24/03/23.
//

import UIKit

class TableViewPizzaViewController: UIViewController {
    
    var arrayPizza: Pizza?
    let request = Request()

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.dataSource = self
        tableView.register(UINib(nibName: "PizzaTableViewCell", bundle: nil), forCellReuseIdentifier: "cell")
        
        request.resquestPizza { arrayDePizza in
            self.arrayPizza = arrayDePizza
            self.tableView.reloadData()
        }
    }

}
extension TableViewPizzaViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.arrayPizza?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? PizzaTableViewCell {
            
            cell.setupPizza(pizza: self.arrayPizza?[indexPath.row])
            
            return cell
        }
        return UITableViewCell()
    }
   
}
