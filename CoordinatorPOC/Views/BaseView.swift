//
//  BaseView.swift
//  CoordinatorPOC
//
//  Created by Shindalkar, Suraj Manmath on 09/09/19.
//  Copyright © 2019 Shindalkar, Suraj Manmath (US - Mumbai). All rights reserved.
//

import UIKit

class BaseView: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setUpUI()
    }
    
    func setUpUI() {
        // Subclass to override
    }
}
