//
//  CoinImageService.swift
//  CryptoTracker
//
//  Created by Navdeep Singh on 21/06/24.
//

import Foundation
import Combine
import SwiftUI

class CoinImageService {
    
    @Published var image: UIImage? = nil
    private var imageSubsciption: AnyCancellable? // since publisher can be cancelled anytime so we have created cancellable
    private let coin: CoinModel
    
    init(coin: CoinModel) {
        self.coin = coin
        getCoinImage()
    }
    
    private func getCoinImage() {
        guard let url = URL(string: coin.image) else {return}
        
        imageSubsciption = NetworkManager.download(url: url)
            .tryMap({ (data) -> UIImage? in // coinDataService yaha pe decode ni kr re, since we only need image toh mapping kr re
                return UIImage(data: data)
            })
            .sink(receiveCompletion: NetworkManager.handleCompletion, receiveValue: {  [weak self] (returnedImage) in
                self?.image = returnedImage  // Appending data to our array
                self?.imageSubsciption?.cancel() // manually cancel kia hai because ye sirf ek get request hi hai, everytime data ni ata rahega url se
            })

    }
    
}
