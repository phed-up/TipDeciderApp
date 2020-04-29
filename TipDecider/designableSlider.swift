//
//  designableSlider.swift
//  TipDecider
//
//  Created by skwong on 4/28/20.
//  Copyright © 2020 skwong. All rights reserved.
//

import UIKit

//add this property to make this class usable inside the interface builder
@IBDesignable

class designableSlider: UISlider {

    //add this property to make this class appear in attributes inspector
    @IBInspectable var thumbImage: UIImage? {
        didSet {
            setThumbImage(thumbImage, for: .normal)
        }
    }

}
