//
//  Extensions.swift
//  BobbleSDKSampleKeyboard
//
//  Created by Ulhas Mandrawadkar on 22/10/18.
//  Copyright © 2018 Bobble Keyboard. All rights reserved.
//

import Foundation
import UIKit

protocol UIViewNib {}

extension UIView : UIViewNib {}

extension UIViewNib where Self : UIView {
    
    // note that this method returns an instance of type `Self`, rather than UIView
    static func loadFromNib(owner: UIViewController) -> Self {
        let nibName = "\(self)".split{$0 == "."}.map(String.init).last!
        let nib = UINib(nibName: nibName, bundle: nil)
        return nib.instantiate(withOwner: owner, options: nil).first as! Self
    }
    
}
