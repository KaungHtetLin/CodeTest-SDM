
import UIKit

class BaseCustomView: UIView {
    
    var contentXibName = ""
    var viewMode:Int = 0
    @IBOutlet weak var contentView:UIView!

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupView()
    }
    
    override func layoutSubviews() {
        updateConstraints()
    }
    
    func setupView() {
        Bundle.main.loadNibNamed(contentXibName, owner: self, options: nil)
        contentView.fixInView(self)
    }
}
