//
//  TextField_custom.swift
//  part3
//
//  Created by 크선멘 개발 on 2021/02/10.
//

import UIKit

class TextField_custom: UITextField {
    var textPadding = UIEdgeInsets(
        top: 0,
        left: 15.adjusted,
        bottom: 0,
        right: 15.adjusted
    )

    override func textRect(forBounds bounds: CGRect) -> CGRect {
        let rect = super.textRect(forBounds: bounds)
        return rect.inset(by: textPadding)
    }

    override func editingRect(forBounds bounds: CGRect) -> CGRect {
        let rect = super.editingRect(forBounds: bounds)
        return rect.inset(by: textPadding)
    }
}
