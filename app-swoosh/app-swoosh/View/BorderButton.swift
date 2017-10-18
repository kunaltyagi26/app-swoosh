//
//  BorderButton.swift
//  app-swoosh
//
//  Created by Kunal Tyagi on 17/10/17.
//  Copyright © 2017 Kunal Tyagi. All rights reserved.
//

import UIKit

class BorderButton: UIButton {

    override func awakeFromNib() {
        super.awakeFromNib()
        layer.borderColor = UIColor.white.cgColor
        layer.borderWidth = 2.0
    }

}
