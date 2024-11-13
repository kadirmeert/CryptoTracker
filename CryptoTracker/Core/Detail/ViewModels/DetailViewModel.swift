//
//  DetailViewModel.swift
//  CryptoTracker
//
//  Created by Kadir Yildiz on 13/11/2024.
//

import Foundation
import Combine

class DetailViewModel: ObservableObject {
    
    private let coinDetailService: CoinDetailDataService
    private var cancellables = Set<AnyCancellable>()
    
    init(coin: CoinModel) {
        self.coinDetailService = CoinDetailDataService(coin: coin)
        self.addSubscribers()
    }
    
    private func addSubscribers() {
        
        coinDetailService.$coinDetails
            .sink { returnedCoinDetails in
                print("RECIEVED COIN DETAILS")
                print(returnedCoinDetails)
            }
            .store(in: &cancellables)
        
    }
}
