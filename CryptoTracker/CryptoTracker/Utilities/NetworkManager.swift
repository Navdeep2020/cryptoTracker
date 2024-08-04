//
//  File.swift
//  CryptoTracker
//
//  Created by Navdeep Singh on 21/06/24.
//

import Foundation
import Combine

class NetworkManager {
    
    enum NetworkingError: LocalizedError {
        case baseURLResponse(url: URL)
        case unknown
        var errorDescription: String? {
            switch self {
            case .baseURLResponse(url: let url): return "Bad url response from server \(url)"
            case .unknown: return "Unknown error caught"
            }
        }
    }
    
    // URLSession hum dataTaskPublisher wala use kr rhe which means hum COmbine use kr re
    static func download(url: URL) -> AnyPublisher<Data,Error> {
        return URLSession.shared.dataTaskPublisher(for: url)
            .subscribe(on: DispatchQueue.global(qos: .default)) // background thread pe api call kra re
            .tryMap { (output) -> Data in
                guard let response  = output.response as? HTTPURLResponse,
                      response.statusCode >= 200 && response.statusCode < 299 else {
                    throw NetworkingError.baseURLResponse(url: url)
                }
                
                return output.data
            }
            .receive(on: DispatchQueue.main) // response main thread pe receive krna hai
            .eraseToAnyPublisher()
    }
    
    static func handleCompletion(completion: Subscribers.Completion<Error>) {
        switch completion {
        case .finished:
            break
        case .failure(let error):
            print(error.localizedDescription)
        }
    }
}
