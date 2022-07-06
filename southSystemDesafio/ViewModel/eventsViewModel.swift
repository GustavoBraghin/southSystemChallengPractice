//
//  eventsViewModel.swift
//  southSystemDesafio
//
//  Created by Gustavo da Silva Braghin on 06/07/22.
//

import Foundation

class EventsViewModel {
    
    private let apiRequest = ApiRequest()
    private var completion: (([EventModel]?, Error?) -> Void)?
    
    func loadData(completion: @escaping ([EventModel]?, Error?) -> Void) {
        self.completion = completion
        apiRequest.fetchData { events, error in
            if let e = error {
                completion(nil, e)
            }
            
            if let event = events {
                completion(event, error)
            }
        }
    }
}
