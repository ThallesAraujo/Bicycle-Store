//
//  RequestHandler.swift
//  code hero
//
//  Created by Thalles Araújo on 24/05/20.
//  Copyright © 2020 Thalles Araújo. All rights reserved.
//

import Foundation
import UIKit
protocol RequestHandler {
    
    func fetchData(forViewController vc: UIViewController, completion: @escaping () -> Void)
    
}
