//
//  MYScrollView.swift
//  TableViewWrapperView
//
//  Created by baidu on 2017/8/7.
//
//

import UIKit

class MYScrollView: UIScrollView {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    override func touchesShouldCancel(in view: UIView) -> Bool {
        if view.isKind(of: UIControl.classForCoder()) {
            return true
        }
        return super.touchesShouldCancel(in: view)
    }

}
