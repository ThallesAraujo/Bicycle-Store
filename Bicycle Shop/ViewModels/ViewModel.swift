//
//  ViewModel.swift
//  Bicycle Shop
//
//  Created by Thalles Araújo on 28/06/20.
//

import Foundation
protocol ViewModel {
    
    var model: Any? { get set }
    
    func configure(_ modeledView: ModeledView)
    
}


