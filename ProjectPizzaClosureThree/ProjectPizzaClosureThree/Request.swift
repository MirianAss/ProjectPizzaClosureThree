//
//  Request.swift
//  ProjectPizzaClosureThree
//
//  Created by Mirian Santana on 24/03/23.
//

import UIKit
import Alamofire

class Request: NSObject {
    
    func resquestPizza(completion: @escaping (Pizza?) -> Void) {
        
        AF.request("https://p3teufi0k9.execute-api.us-east-1.amazonaws.com/v1/pizza").response {response in
            
            let pizza = try? JSONDecoder().decode(Pizza.self, from: response.data ?? Data())
            
            completion(pizza)

        }
    }

}
