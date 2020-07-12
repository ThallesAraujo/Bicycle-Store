//
//  CartaoModeledView.swift
//  Bicycle Shop
//
//  Created by Thalles Araújo on 28/06/20.
//

import Foundation
import UIKit
protocol CartaoModeledView: ModeledView{
    
    var viewModel: CartaoViewModel {get set}
    var numeroField: UITextField {get set}
    var vencimentoField: UITextField {get set}
    var titularField: UITextField {get set}
    var cvvField: UITextField {get set}
    
}
