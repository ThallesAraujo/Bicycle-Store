//
//  LoginModeledView.swift
//  Bicycle Shop
//
//  Created by Thalles Araújo on 28/06/20.
//

import Foundation
import UIKit
protocol  LoginModeledView: ModeledView {
    
    var viewModel: LoginViewModel {get set}
    var emailField: UITextField {get set}
    var senhaField: UITextField {get set}
    
}
