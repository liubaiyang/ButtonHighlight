//
//  MYButton.swift
//  TableViewWrapperView
//
//  Created by baidu on 2017/8/7.
//
//

import UIKit

class MYButton: UIButton {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    
    // MARK: override highlight
    override var isHighlighted: Bool {
        set {
            super.isHighlighted = newValue
            print("isHighlighted property chanded to \(newValue)")
        }
        get {
            return super.isHighlighted
        }
    }
    
    override func layoutSubviews() {
         super.layoutSubviews()
    }
    
    // MARK: response event
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesEnded(touches, with: event)
    }
    
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesCancelled(touches, with: event)
    }

}
