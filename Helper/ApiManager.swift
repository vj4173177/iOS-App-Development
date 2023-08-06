//
//  ApiManager.swift
//  WedNicely
//
//  Created by S Vijay Kumar on 18/07/23.
//

import Foundation

enum DataError:Error{
    case network(_ error:Error?)
    case invalidResponse
    case invalidURL
}
typealias Handler = (Result<[Product],DataError>)-> Void

final class APIManager{
    static let shared = APIManager()
    private init(){}
    
    func fetchProducts(completion:@escaping Handler){
        guard let url = URL(string:Constant.API.productURL )else{
            
            return
        }
        URLSession.shared.dataTask(with: url){data,response,error in
            guard let data, error==nil else{
                
                completion(.failure(.invalidResponse))
                return
            }
            guard let response = response as? HTTPURLResponse,
                  200 ... 299 ~= response.statusCode else {
                completion(.failure(.invalidResponse))
                return}
            
            do{
                let products = try JSONDecoder().decode([Product].self, from: data)
                completion(.success(products))
            }catch{
                completion(.failure(.network(error)))

            }
        }.resume()
    }
    
}
