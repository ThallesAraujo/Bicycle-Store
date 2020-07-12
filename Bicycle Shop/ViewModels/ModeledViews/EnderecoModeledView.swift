//
//  EnderecoModeledView.swift
//  Bicycle Shop
//
//  Created by Thalles Araújo on 28/06/20.
//

import Foundation
import UIKit
protocol EnderecoModeledView: ModeledView{
    
    var viewModel: EnderecoViewModel {get set}
    var cepField: UITextField {get set}
    var logradouroField: UITextField {get set}
    var numeroField: UITextField {get set}
    var bairroField: UITextField {get set}
    var cidadeField: UITextField {get set}
    var estadoField: UITextField {get set}
    var complementoField: UITextField {get set}
    
}
