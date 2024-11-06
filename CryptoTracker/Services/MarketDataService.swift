//
//  MarketDataService.swift
//  CryptoTracker
//
//  Created by Kadir Yildiz on 5/11/2024.
//

import Foundation
import Combine

class MarketDataService {
    
    @Published var marketData: MarketDataModel? = nil
    var marketDataSubscription: AnyCancellable?
    
    init() {
        getMarketData()
    }
    
    private func getMarketData() {
        
        guard let url = URL(string: "https://api.coingecko.com/api/v3/global") else { return }
        
        marketDataSubscription = NetworkingManager.download(url: url)
            .decode(type: GlobalData.self, decoder: JSONDecoder())
            .sink(receiveCompletion: NetworkingManager.handleCompletion, receiveValue: { [weak self] returnedGlobaldata in
                self?.marketData = returnedGlobaldata.data
                self?.marketDataSubscription?.cancel()
            })
    }
}
