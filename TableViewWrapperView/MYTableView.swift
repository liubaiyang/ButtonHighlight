//
//  MYTableView.swift
//  TableViewWrapperView
//
//  Created by baidu on 2017/8/7.
//
//

import UIKit

class MYTableView: UITableView {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    
    override init(frame: CGRect, style: UITableViewStyle) {
        super.init(frame: frame, style: style)
        self.configWrapperView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.configWrapperView()
    }
    
    func configWrapperView() {
        for view in self.subviews {
            if NSStringFromClass(view.classForCoder) == "UITableViewWrapperView" {
                if view.isKind(of: UIScrollView.classForCoder()) {
                    let scrollView = view as! UIScrollView
                    scrollView.delaysContentTouches = false
                }
                break
            }
        }
    }
    
    override func touchesShouldCancel(in view: UIView) -> Bool {
        if view.isKind(of: UIControl.classForCoder()) {
            return true
        }
        return super.touchesShouldCancel(in: view)
    }
}
