//
//  MainCoordinator.swift
//  swift-issues
//
//  Created by Thalles Araújo on 08/02/20.
//  Copyright © 2020 Thalles Araújo. All rights reserved.
//

//Implementação padrão para o design pattern coordinator
//IMPORTANTE: Todos os IDs de ViewControllers devem ser setados no Storyboard!

import UIKit

class MainCoordinator: Coordinator {
    
    var childCoordinators = [Coordinator]()
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController){
        self.navigationController = navigationController
    }
    
    func start() {
        let vc = MainVC.instantiate()
        vc.coordinator = self
        let requestHandler = ProdutoRequestHandler()
        requestHandler.fetchData(forViewController: vc) {
            self.navigationController.pushViewController(vc, animated: false)
        }
    }
    
//    func goToAnotherVC(myModel: Model){
//        let vc = VCAnother.instantiate()
//        vc.model = myModel
//        vc.coordinator = self
//        navigationController.pushViewController(vc, animated: true)
//    }

}
