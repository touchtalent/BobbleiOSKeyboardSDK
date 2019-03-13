//
//  ZomatoHomeView.swift
//  BobbleSDKSampleApp
//
//  Created by Ulhas Mandrawadkar on 23/10/18.
//  Copyright © 2018 Bobble Keyboard. All rights reserved.
//

import UIKit

class ZomatoHomeView: UIView {
    
    static func loadView<T>(fromNib name: String, withType type: T.Type) -> T {
        if let view = Bundle.main.loadNibNamed(name, owner: nil, options: nil)?.first as? T {
            return view
        }
        
        fatalError("Could not load view with type " )
    }
    
    
}
