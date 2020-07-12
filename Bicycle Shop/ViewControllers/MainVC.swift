//
//  MainVC.swift
//  Bicycle Shop
//
//  Created by Thalles Araújo on 11/07/20.
//

import Foundation
import UIKit

class MainVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout, Storyboarded{
    
    
    var coordinator: Coordinator?
    
    @IBOutlet weak var collectionView: UICollectionView?
    
    
    var produtos: [ProdutoViewModel] = []{
        didSet{
            self.collectionView?.reloadData()
        }
    }
    
    override func viewDidLoad() {
        self.navigationController?.navigationBar.isHidden = true
        self.collectionView?.delegate = self
        self.collectionView?.dataSource = self
    }
    
    override func viewDidAppear(_ animated: Bool) {
        self.collectionView?.reloadData()
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
            return CGSize(width: 30, height: 30)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if section == 0{
            return self.produtos.count
        }else{
            return 0
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "produtoCollectionViewCell", for: indexPath) as? ProdutoCollectionViewCell{
            cell.viewModel = self.produtos[indexPath.row]
            cell.viewModel?.configure(cell)
            return cell
        }else{
            let cell = ProdutoCollectionViewCell()
            return cell
        }
    }
}
