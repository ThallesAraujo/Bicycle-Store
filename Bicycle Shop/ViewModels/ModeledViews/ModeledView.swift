//
//  ModeledView.swift
//  Bicycle Shop
//
//  Created by Thalles Araújo on 28/06/20.
//

import Foundation
import UIKit

protocol ModeledView{
    
    var viewModel: ViewModel? { get set }
}

extension ModeledView where Self: UIViewController{
    
     func viewDidLoad() {
        viewModel?.configure(self)
    }
    
}
