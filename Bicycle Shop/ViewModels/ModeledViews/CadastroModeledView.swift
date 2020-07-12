//
//  CadastroModeledView.swift
//  Bicycle Shop
//
//  Created by Thalles Araújo on 28/06/20.
//

import Foundation
import UIKit
protocol CadastroModeledView: ModeledView{
    
    var viewModel: CadastroViewModel { get set }
    var nomeField: UITextField { get set }
    var sobrenomeField: UITextField { get set }
    var dataNascimentoField: UITextField { get set }
    var cpfField: UITextField { get set }
    var emailField: UITextField { get set }
    var senhaField: UITextField { get set }
    var repetirSenhaField: UITextField { get set }
    var telefonePrimarioField: UITextField { get set }
    var telefoneSecundarioField: UITextField { get set }
    
}
