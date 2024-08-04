//
//  CoinDataService.swift
//  CryptoTracker
//
//  Created by Navdeep Singh on 20/06/24.
//

import Foundation
import Combine

class CoinDataService {
    
    @Published var allCoins: [CoinModel] = []
    var cancellables = Set<AnyCancellable>()
    
    var coinSubsciption: AnyCancellable? // since publisher can be cancelled anytime so we have created cancellable
    
    init() {
        getCoins()
    }
    
    func getCoins() {
        guard let url = URL(string: "https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd&order=market_cap_desc&per_page=250&page=1&sparkline=true&price_change_percentage=24h")
        else {return}
        
        coinSubsciption = NetworkManager.download(url: url)
            .decode(type: [CoinModel].self, decoder: JSONDecoder()) // kisko decode krna hai and kismai decode krna hai wo bata re
            .sink(receiveCompletion: NetworkManager.handleCompletion, receiveValue: {  [weak self] (returnedCoins) in
                self?.allCoins = returnedCoins  // Appending data to our array
                self?.coinSubsciption?.cancel() // manually cancel kia hai because ye sirf ek get request hi hai, everytime data ni ata rahega url se
            })
    }
}
