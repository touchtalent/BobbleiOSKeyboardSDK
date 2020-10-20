//
//  KeyboardTopbar.swift
//  BobbleSDKSampleKeyboard
//
//  Created by Ulhas Mandrawadkar on 22/10/18.
//  Copyright © 2018 Bobble Keyboard. All rights reserved.
//

import UIKit

enum KeyboardState {
    case careem,camera, zomato, wallet, language, theme, touchid, initial
}


protocol KeyboardTopbarDelegate : class {
    func keyboardTopBarDidTapCareemButton(_ topBar: KeyboardTopbar)
    func keyboardTopBarDidTapCameraButton(_ topBar: KeyboardTopbar)
    func keyboardTopBarDidTapTouchButton(_ topBar: KeyboardTopbar)
    func keyboardTopBarDidTapZomatoButton(_ topBar: KeyboardTopbar)
    func keyboardTopBarDidTapWalletButton(_ topBar: KeyboardTopbar)
    func keyboardTopBarDidTapBotButton(_ topBar: KeyboardTopbar)
    func keyboardTopBarDidTapPayButton(_ topBar: KeyboardTopbar)
    func keyboardTopBarDidTapKeyboardButton(_ topBar: KeyboardTopbar)
}

class KeyboardTopbar: UIView {
    static func loadView<T>(fromNib name: String, withType type: T.Type) -> T {
        if let view = Bundle.main.loadNibNamed(name, owner: nil, options: nil)?.first as? T {
            return view
        }
        
        fatalError("Could not load view with type " )
    }
    
    var state: KeyboardState = .initial {
        didSet {
            changeUI()
        }
    }
    
    weak var delegate: KeyboardTopbarDelegate?

    @IBOutlet weak var careemButton: UIButton!
    @IBOutlet weak var touchButton: UIButton!
    @IBOutlet weak var cameraButton: UIButton!
    @IBOutlet weak var zomatoButton: UIButton!
    @IBOutlet weak var walltetButton: UIButton!
    @IBOutlet weak var botButton: UIButton!
    @IBOutlet weak var payButton: UIButton!
    
    @IBOutlet weak var stateView: UIView!
    @IBOutlet weak var keyboardButton: UIButton!
    @IBOutlet weak var stateImageView: UIImageView!
    @IBOutlet weak var stateLabel: UILabel!
    
    @IBAction func careemButtonTapped(_ sender: UIButton) {
        state = .careem
        delegate?.keyboardTopBarDidTapCareemButton(self)
    }
    @IBAction func cameraButtonTapped(_ sender: UIButton) {
        state = .camera
        delegate?.keyboardTopBarDidTapCameraButton(self)
    }
    @IBAction func touchButtonTapped(_ sender: UIButton) {
        state = .touchid
        delegate?.keyboardTopBarDidTapTouchButton(self)
    }
    
    @IBAction func zomatoButtonTapped(_ sender: UIButton) {
        state = .zomato
        delegate?.keyboardTopBarDidTapZomatoButton(self)
    }
    
    @IBAction func walletButtonTapped(_ sender: UIButton) {
        state = .wallet
        delegate?.keyboardTopBarDidTapWalletButton(self)
    }
    
    @IBAction func botButtonTapped(_ sender: UIButton) {
        state = .language
        delegate?.keyboardTopBarDidTapBotButton(self)
    }
    
    @IBAction func payButtonTapped(_ sender: Any) {
        state = .theme
        delegate?.keyboardTopBarDidTapPayButton(self)
    }
    
    @IBAction func keyboardButtonClicked(_ sender: UIButton) {
        state = .initial
        delegate?.keyboardTopBarDidTapKeyboardButton(self)
    }
    
    
    private func changeUI() {
        switch (state) {
        case .zomato:
            setZomatoState()
        case .careem:
            setCareemState()
        case .theme:
            setPayState()
        case .wallet:
            setWalletState()
        case .language:
            setBotState()
        default:
            setInitialState()
        }
    }
    
    private func setInitialState() {
        stateView.isHidden = true
    }
    
    private func setZomatoState() {
        stateView.isHidden = false
        stateLabel.text = "Zomato"
        stateImageView.image = UIImage(named: "zomato")
    }
    
    private func setCareemState() {
        stateView.isHidden = false
        stateLabel.text = "Careem"
        stateImageView.image = UIImage(named: "careem_icon")
    }
    
    private func setBotState() {
        stateView.isHidden = false
        stateLabel.text = "Language"
        stateImageView.image = UIImage(named: "bot_icon")
    }
    
    private func setWalletState() {
        stateView.isHidden = false
        stateLabel.text = "Wallet"
        stateImageView.image = UIImage(named: "walet_icon")
    }
    
    private func setPayState() {
        stateView.isHidden = false
        stateLabel.text = "Theme"
        stateImageView.image = UIImage(named: "pay_icon")
    }
}
