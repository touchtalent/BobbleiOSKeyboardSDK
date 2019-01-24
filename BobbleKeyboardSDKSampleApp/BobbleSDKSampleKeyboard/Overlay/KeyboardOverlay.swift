//
//  KeyboardOverlay.swift
//  BobbleSDKSampleKeyboard
//
//  Created by Ulhas Mandrawadkar on 24/10/18.
//  Copyright © 2018 Bobble Keyboard. All rights reserved.
//

import UIKit

protocol KeyboardOverlayDelegate: class {
    func overlayDidTapHideButton(_ overlay: KeyboardOverlay)
}

class KeyboardOverlay: UIView {
    
    weak var delegate: KeyboardOverlayDelegate?
    
    @IBAction func hideOverlayButtonClicked(_ sender: Any) {
        delegate?.overlayDidTapHideButton(self)
    }
}
