//
//  ViewController.swift
//  SwiftStoreExample
//
//  Created by Hemanta Sapkota on 12/05/2015.
//  Copyright (c) 2015 Hemanta Sapkota. All rights reserved.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    private var rowView: RowView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view = UIView(frame: UIScreen.mainScreen().bounds)
        view.backgroundColor = UIColor.whiteColor()
        
        let demoLabel = UILabel()
        demoLabel.text = "Swift Store Demo"
        view.addSubview(demoLabel)
        demoLabel.snp_makeConstraints { (make) -> Void in
            make.top.equalTo(30)
            make.centerX.equalTo(self.view.snp_centerX)
        }
        
        rowView = RowView()
        view.addSubview(rowView)
        rowView.snp_makeConstraints { (make) -> Void in
            make.top.greaterThanOrEqualTo(demoLabel.snp_bottom).offset(5)
            make.left.equalTo(10)
        }
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

extension ViewController {
    
    class RowView : UIView {
        
        init() {
            super.init(frame: UIScreen.mainScreen().bounds)
            
            let ulabel = UILabel()
            ulabel.text = "Single"
            addSubview(ulabel)
            ulabel.snp_makeConstraints { (make) -> Void in
                make.left.equalTo(0)
                make.top.equalTo(0)
            }
            
            let keytext = UITextField()
            keytext.backgroundColor = UIColor.lightGrayColor()
            keytext.placeholder = "Key"
            addSubview(keytext)
            keytext.snp_makeConstraints { (make) -> Void in
                make.left.greaterThanOrEqualTo(ulabel.snp_right).offset(10)
                make.centerY.equalTo(ulabel.snp_centerY)
                make.width.equalTo(80)
                make.height.equalTo(30)
            }
            
            let valuetext = UITextField()
            valuetext.placeholder = "Value"
            valuetext.backgroundColor = UIColor.lightGrayColor()
            addSubview(valuetext)
            valuetext.snp_makeConstraints { (make) -> Void in
                make.left.greaterThanOrEqualTo(keytext.snp_right).offset(10)
                make.centerY.equalTo(ulabel.snp_centerY)
                make.width.equalTo(80)
                make.height.equalTo(30)
            }
            
            let savebtn = UIButton.buttonWithType(UIButtonType.System) as! UIButton
            savebtn.backgroundColor = UIColor.lightGrayColor()
            savebtn.setTitle("Save", forState: UIControlState.Normal)
            addSubview(savebtn)
            savebtn.snp_makeConstraints { (make) -> Void in
                make.left.greaterThanOrEqualTo(valuetext.snp_right).offset(10)
                make.centerY.equalTo(ulabel.snp_centerY)
                make.width.equalTo(50)
                make.height.equalTo(30)
            }
            
            let deletebtn = UIButton.buttonWithType(UIButtonType.System) as! UIButton
            deletebtn.backgroundColor = UIColor.lightGrayColor()
            deletebtn.setTitle("Delete", forState: UIControlState.Normal)
            addSubview(deletebtn)
            deletebtn.snp_makeConstraints { (make) -> Void in
                make.left.equalTo(savebtn.snp_right).offset(10)
                make.centerY.equalTo(ulabel.snp_centerY)
                make.width.equalTo(50)
                make.height.equalTo(30)
            }
        }

        required init(coder aDecoder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
        
    }
    
}

