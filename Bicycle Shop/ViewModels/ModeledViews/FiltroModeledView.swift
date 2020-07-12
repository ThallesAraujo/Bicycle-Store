//
//  FiltroModeledView.swift
//  Bicycle Shop
//
//  Created by Thalles Araújo on 28/06/20.
//

import Foundation
import UIKit
protocol FiltroModeledView: ModeledView{

    var viewModel: FiltroViewModel { get set }
    var ordenarPorSelect: UIPickerView { get set }
    var categoriaSelect: UIPickerView { get set }
    
    
}
