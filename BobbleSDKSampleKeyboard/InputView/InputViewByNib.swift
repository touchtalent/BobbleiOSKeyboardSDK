//
//  InputViewByNib.swift
//  BobbleSDKSampleKeyboard
//
//  Created by Yash Sikarvar on 09/01/19.
//  Copyright © 2019 Bobble Keyboard. All rights reserved.
//

import UIKit
import BobbleKeyboardSDK

class InputViewByNib: UIView  {
    
  
    @IBOutlet weak var viewForText: UIView!
    @IBOutlet weak var viewForText1: UIView!
    @IBOutlet weak var viewForText2: UIView!
    
    static func loadView<T>(fromNib name: String, withType type: T.Type) -> T {
        if let view = Bundle.main.loadNibNamed(name, owner: nil, options: nil)?.first as? T {
            return view
        }
        
        fatalError("Could not load view with type " )
    }
    
//    func setup()
//    {
//        txtInput = TextInputView(frame: CGRect(x: 0, y: 0, width: viewForText.frame.size.width
//            , height: viewForText.frame.size.height))
//        viewForText.addSubview(txtInput)
//        txtInput.setPlaceHolder(str: " set place holder")
//
//
//    }
    
    
}


