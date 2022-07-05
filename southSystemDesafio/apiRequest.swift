//
//  apiRequest.swift
//  southSystemDesafio
//
//  Created by Gustavo da Silva Braghin on 05/07/22.
//

import Foundation

struct apiRequest {
    func fetchData(completion: @escaping ([eventModel]?, Error?) -> Void){
        
        let urlPath: URL = URL(string: "http://5f5a8f24d44d640016169133.mockapi.io/api/events")!
        URLSession.shared.dataTask(with: urlPath) { data, response, error in
            do {
                let jsonDecoder = JSONDecoder()
                let responseModel = try jsonDecoder.decode([eventModel].self, from: data!)
                completion(responseModel, error)
            } catch {
                print("JSON Serialization error")
                print(error)
                completion(nil, error)
            }
        }.resume()
    }
}

