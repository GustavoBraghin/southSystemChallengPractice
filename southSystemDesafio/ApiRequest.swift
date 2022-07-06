//
//  apiRequest.swift
//  southSystemDesafio
//
//  Created by Gustavo da Silva Braghin on 05/07/22.
//

import Foundation

struct ApiRequest {
    func fetchData(completion: @escaping ([EventModel]?, Error?) -> Void){
        
        let urlPath: URL = URL(string: "http://5f5a8f24d44d640016169133.mockapi.io/api/events")!
        URLSession.shared.dataTask(with: urlPath) { data, response, error in
            do {
                let jsonDecoder = JSONDecoder()
                let events = try jsonDecoder.decode([EventModel].self, from: data!)
                completion(events, error)
            } catch {
                print("JSON Serialization error")
                print(error)
                completion(nil, error)
            }
        }.resume()
    }
}

