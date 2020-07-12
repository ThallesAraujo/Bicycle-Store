//
//  CustomSelectDelegate.swift
//  Bicycle Shop
//
//  Created by Thalles Araújo on 28/06/20.
//

import Foundation
import UIKit
class CustomSelectDelegate: NSObject, UIPickerViewDelegate, UIPickerViewDataSource{
    
    var pickerView: UIPickerView?
    
    var data: [String] = []{
        didSet{
            self.pickerView?.reloadAllComponents()
        }
    }
    
    var didTapOption: (_ option : String) -> Void = {option in }
    
    init(pickerView: UIPickerView) {
        super.init()
        self.pickerView = pickerView
        self.pickerView?.delegate = self
        self.pickerView?.dataSource = self
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return self.data.count
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        self.didTapOption(self.data[row])
    }
    
    
}
