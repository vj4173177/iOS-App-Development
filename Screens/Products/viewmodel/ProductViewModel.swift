//
//  ProductViewModel.swift
//  WedNicely
//
//  Created by S Vijay Kumar on 18/07/23.
//

import Foundation

final class ProductViewModel{
    var products:[Product] = []
    func fetchProducts(){
        APIManager.shared.fetchProducts{
            response in switch response{
            case .success(let products1):
                self.products=products1
                print(products1)
            case .failure(let error):
                print(error)
            }
        }
    }
}
