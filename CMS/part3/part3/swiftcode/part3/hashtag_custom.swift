//
//  hashtag_custom.swift
//  part3
//
//  Created by 크선멘 개발 on 2021/02/20.
//

import UIKit

class hashtag_custom: UILabel {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    var padding : UIEdgeInsets
        
        // Create a new SSPaddingLabel instance programamtically with the desired insets
        required init(padding: UIEdgeInsets = UIEdgeInsets(top: 0, left: 1, bottom: 0, right: 1)) {
            self.padding = padding
            super.init(frame: CGRect.zero)
        }
        
        // Create a new SSPaddingLabel instance programamtically with default insets
        override init(frame: CGRect) {
            padding = UIEdgeInsets.zero // set desired insets value according to your needs
            super.init(frame: frame)
        }
        
        // Create a new SSPaddingLabel instance from Storyboard with default insets
        required init?(coder aDecoder: NSCoder) {
            padding = UIEdgeInsets.zero // set desired insets value according to your needs
            super.init(coder: aDecoder)
        }
        
        override func drawText(in rect: CGRect) {
            super.drawText(in: rect.inset(by: padding))
        }
        
        // Override `intrinsicContentSize` property for Auto layout code
        override var intrinsicContentSize: CGSize {
            let superContentSize = super.intrinsicContentSize
            let width = superContentSize.width + padding.left + padding.right
            let heigth = superContentSize.height + padding.top + padding.bottom
            return CGSize(width: width, height: heigth)
        }
        
        // Override `sizeThatFits(_:)` method for Springs & Struts code
        override func sizeThatFits(_ size: CGSize) -> CGSize {
            let superSizeThatFits = super.sizeThatFits(size)
            let width = superSizeThatFits.width + padding.left + padding.right
            let heigth = superSizeThatFits.height + padding.top + padding.bottom
            return CGSize(width: width, height: heigth)
        }

}
