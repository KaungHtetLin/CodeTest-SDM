
import UIKit

class BaseControlView: BaseCustomView {
    
    @IBOutlet weak var overAllStack:UIStackView!
    @IBOutlet weak var lblControlLabel:UILabel!
    @IBOutlet weak var imgRequired:UILabel!
    @IBOutlet weak var labelStack:UIStackView!
    var isViewOnly:Bool = false
    
    var isRequiredControl: Bool = false
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    func removeStackLabel() {
        if(lblControlLabel != nil && self.lblControlLabel.text == "NA"){
            self.overAllStack.removeArrangedSubview(self.labelStack)
            self.labelStack.removeFromSuperview()
        }
    }
    func removeControlLabel() {
        if(lblControlLabel != nil && self.lblControlLabel.text == "NA"){
            self.overAllStack.removeArrangedSubview(self.lblControlLabel)
            self.lblControlLabel.removeFromSuperview()
        }
    }
    
    func setLabelText(_ textString: String){
        if(self.lblControlLabel != nil){
            self.lblControlLabel.text = textString
        }
    }
    
    func setRequiredControl(_ requiredControl: Bool){
        self.isRequiredControl = requiredControl
        self.imgRequired.isHidden = !requiredControl
    }
    
    func setRequired(_ required: Bool){
        if(self.isRequiredControl){
            self.imgRequired.isHidden = !required
        }
    }
}
