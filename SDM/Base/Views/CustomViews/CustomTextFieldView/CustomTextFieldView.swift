//
//  CustomTextFieldView.swift
//  SDM
//
//  Created by Kaung Htet Lin on 27/02/2022.
//

import UIKit

class CustomTextFieldView: BaseControlView {
    
    @IBOutlet weak var txtField:UITextField!
    
    var delegate : CustomTextFieldDelegate? {
        didSet{
            txtField.addTarget(self, action: #selector(textFieldDidChange), for: .editingChanged)
        }
    }

    override func layoutSubviews() {
        super.layoutSubviews()
        if(self.isViewOnly){
            self.txtField.isEnabled = !isViewOnly
        }
        self.updateConstraints()
    }
    
    // Setup view with components
    override func setupView() {
        contentXibName = "CustomTextFieldView"
        super.setupView()
    }
    
    @objc func textFieldDidChange() {
        delegate?.textChanged(text: txtField.text ?? "")
    }
    
    func setPlaceHolderText(text : String){
        if txtField != nil {
            txtField.placeholder = text
        }
    }
    
    func getText() -> String {
        return txtField.text ?? ""
    }
    
    func setKeyboardType(type : UIKeyboardType) {
        txtField.keyboardType = type
    }
    
    func setText(text : String) {
        txtField.text = text
    }
    
    func makeSecureTestEntry() {
        txtField.isSecureTextEntry = true
    }
}

protocol CustomTextFieldDelegate {
    func textChanged(text : String)
}
