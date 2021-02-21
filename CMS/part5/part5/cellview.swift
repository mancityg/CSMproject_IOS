//
//  cellview.swift
//  part5
//
//  Created by 크선멘 개발 on 2021/02/21.
//

import UIKit

class cellview: UIView {
    override func draw(_ rect: CGRect) {
         super.draw(rect)
      }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.backgroundColor = UIColor.white
        super.touchesBegan(touches, with: event)
    }

    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.backgroundColor = UIColor.gray
        super.touchesEnded(touches, with: event)
    }
}
