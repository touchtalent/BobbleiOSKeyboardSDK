
/*
 *  ____        _     _     _      ___ __  __ _____   ____  ____  _  __
 * | __ )  ___ | |__ | |__ | | ___|_ _|  \/  | ____| / ___||  _ \| |/ /
 * |  _ \ / _ \| '_ \| '_ \| |/ _ \| || |\/| |  _|   \___ \| | | | ' /
 * | |_) | (_) | |_) | |_) | |  __/| || |  | | |___   ___) | |_| | . \
 * |____/ \___/|_.__/|_.__/|_|\___|___|_|  |_|_____| |____/|____/|_|\_\
 *
 * Copyright (C) BobbleKeyboard@2018 - All Rights Reserved
 * Unauthorized copying of this file, via any medium is strictly prohibited
 * Proprietary and confidential
 */

import UIKit
import BobbleKeyboardSDK
import LocalAuthentication


class KeyboardViewController: BobbleKeyboardViewController, BobbleWordCommitDelegate,touchIdDelegate , UITextFieldDelegate,TextInputDelegate{
    
   
    
    // TextInputViewDelegate
    
    func textViewShouldReturn(textView: TextInputView) {
        restoreInputTarget()
        print(textView)
    }

    func textViewShouldBeginEditing(textView: TextInputView) {
        if currentInputTextView != nil
        {
            currentInputTextView?.hideBlinkView()
        }
        currentInputTextView = textView
        setInputTarget(textView: textView, keyboardMode:30)
       print(textView)
    }
    
    func textViewDidEndEditing(textView: TextInputView) {
        print(textView)
    }
    
    func textInputViewObserver(textView:TextInputView) {
        print(textView)
    }
    
    
    
    func touchIdAction(isSuccess: Bool) {
        if isSuccess
        {
                 openQRCodeScanner()
        }
        else
        {

        }
    }
    
    func onWordCommit(string: String) {
        
       // hideTopBar()
       

         print("callBackString:",string)
    }
    
    
    
    var topBar: KeyboardTopbar!
    var isKeyboardTheme: Bool = false
    var isEnglishLanguage: Bool = true
    var currentInputTextView:TextInputView?
    
    required convenience init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        self.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        setBobbleWordCommitDelegate(delegate: self)
       // setKeyboardReturnButtonDelegate(delegate: self)
        TouchIdDelegate(delegate: self)
        topBar = getTopBar()
        setTopBar(view: topBar)
        
    }
    
   
    

    private func getTopBar() -> KeyboardTopbar {
        let keyboardTopBar = KeyboardTopbar.loadFromNib(owner: self)
        keyboardTopBar.delegate = self
        return keyboardTopBar
    }
    
}

extension KeyboardViewController: KeyboardTopbarDelegate {
    
    func keyboardTopBarDidTapCareemButton(_ topBar: KeyboardTopbar) {
//        let overlay = KeyboardOverlay.loadFromNib(owner: self)
//        overlay.delegate = self
//        print(overlay.frame)
//        showOverlay(view: overlay)
        let font:[String] = getAllFontName()
        print(font)
        changeFont(fontName: font[0])
        
    }
    
    func keyboardTopBarDidTapCameraButton(_ topBar: KeyboardTopbar) {
//         openQRCodeScanner()
        let font:[String] = getAllFontName()
        print(font)
        changeFont(fontName: font[8])
    }

    func keyboardTopBarDidTapTouchButton(_ topBar: KeyboardTopbar) {
        //touchIdClicked()
        
        let InputViewBy = InputViewByNib.loadView(fromNib: "InputViewByNib", withType: InputViewByNib.self)
        InputViewBy.frame = CGRect(x: 0, y:0, width: self.view.bounds.width, height:200)
        
        let txtInput:TextInputView = TextInputView(frame: CGRect(x: 0, y: 0, width: InputViewBy.viewForText.frame.size.width
            , height: InputViewBy.viewForText.frame.size.height ))
        InputViewBy.viewForText.addSubview(txtInput)
        txtInput.setPlaceHolder(str: " set place holder", placeholderColor: UIColor.lightGray, placeHolderFont: UIFont(name:"Helvetica" , size: 15)!)
        txtInput.backgroundColor = UIColor.red
        txtInput.textFont =  UIFont(name: "Helvetica", size: 20)!
        txtInput.textColor = UIColor.black
        txtInput.textDelegate = self
        
        
        
        let txtInput1:TextInputView = TextInputView(frame: CGRect(x: 0, y: 0, width: InputViewBy.viewForText1.frame.size.width
            , height: InputViewBy.viewForText1.frame.size.height))
        InputViewBy.viewForText1.addSubview(txtInput1)
        txtInput1.setPlaceHolder(str: " set place holder 1", placeholderColor: UIColor.lightGray, placeHolderFont: UIFont(name:"Helvetica" , size: 15)!)
        txtInput1.backgroundColor = UIColor.red
        txtInput1.textFont =  UIFont(name: "Helvetica", size: 20)!
        txtInput1.textColor = UIColor.black
        txtInput1.textDelegate = self
        
        
        
        
        
        let txtInput2:TextInputView = TextInputView(frame: CGRect(x: 0, y: 0, width: InputViewBy.viewForText2.frame.size.width
            , height: InputViewBy.viewForText2.frame.size.height))
        InputViewBy.viewForText2.addSubview(txtInput2)
        txtInput2.setPlaceHolder(str: " set place holder 2", placeholderColor: UIColor.lightGray, placeHolderFont: UIFont(name:"Helvetica" , size: 15)!)
        txtInput2.backgroundColor = UIColor.red
        txtInput2.textColor = UIColor.black
        txtInput2.textFont =  UIFont(name: "Helvetica", size: 20)!
        txtInput2.textDelegate = self
        
        showCustomView(view: InputViewBy)
        
    }
    
    
    func keyboardTopBarDidTapZomatoButton(_ topBar: KeyboardTopbar) {
        let zomatoView = ZomatoHomeView.loadView(fromNib: "ZomatoHomeView", withType: ZomatoHomeView.self)
        zomatoView.frame = CGRect(x: 0, y:0, width: self.view.bounds.width, height:200)
        print(zomatoView.frame)
        showCustomView(view: zomatoView)
    }
    
    func keyboardTopBarDidTapWalletButton(_ topBar: KeyboardTopbar) {
        let customView = UIView(frame: CGRect(x: 0, y:0, width: self.view.bounds.width, height:300))
       // customView.frame = CGRect(x: 0, y:0, width: self.view.bounds.width, height:100)
        customView.backgroundColor = .black
        
       
        let feedbackInputView = TextInputView(frame: CGRect(x: 20, y: 10, width: 200, height: 60))
        feedbackInputView.backgroundColor = UIColor.white
        feedbackInputView.delegate = self
        feedbackInputView.isHidden = false
        feedbackInputView.layer.cornerRadius = 4
        feedbackInputView.layer.masksToBounds = true
        feedbackInputView.isPasswordProtacted = false
        customView.addSubview(feedbackInputView)
        
        
        let pvtTxtFld  =  CustomTextField(frame: CGRect(x: 20, y: 100, width: 200, height: 60))
        pvtTxtFld.delegate = self
        pvtTxtFld.placeholder = "privte textfiled"
        pvtTxtFld.backgroundColor  = UIColor.white
        customView.addSubview(pvtTxtFld)
        
        let restoreButton = UIButton(frame: CGRect(x: 230, y: 10, width: 70, height: 60))
        restoreButton.setTitle("Restore", for: .normal)
        restoreButton.addTarget(self, action: #selector(KeyboardViewController.restoreButtonClicked), for: .touchUpInside)
        customView.addSubview(restoreButton)
        
        let button = UIButton(frame: CGRect(x: 310, y: 10, width: 60, height: 60))
        button.setTitle("Show", for: .normal)
        button.addTarget(self, action: #selector(KeyboardViewController.showButtonClicked), for: .touchUpInside)
        customView.addSubview(button)
        

        showCustomView(view: customView)
        setInputTarget(textView: feedbackInputView , keyboardMode:33)
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        
       openViewForPrivateTextField()
    }
    
    @objc func restoreButtonClicked() {
        restoreInputTarget()
    }
    
    @objc func showButtonClicked() {
        setKeyboardType(keyboardMode: 33)
        showKeyboardView()
    }
    
    func keyboardTopBarDidTapBotButton(_ topBar: KeyboardTopbar) {
       if isEnglishLanguage
       {
        isEnglishLanguage = !isEnglishLanguage
        setKeyboardLanguage(value: "en")
        }
        else
        {
        isEnglishLanguage = !isEnglishLanguage
        setKeyboardLanguage(value: "ar")
        }
    }
    
    func keyboardTopBarDidTapPayButton(_ topBar: KeyboardTopbar) {
        
        if isKeyboardTheme
        {
            isKeyboardTheme = !isKeyboardTheme
            loadTheme(themeObject: nil)
        }
        else
        {
            isKeyboardTheme = !isKeyboardTheme
            let themeObject:KeyboardThemeModel = KeyboardThemeModel(keyboardBackgroundColor: "#f4b642", keyColor: "#f44d41", suggestionBarColor: "#f441f1", suggestionDividerColor: "#85f441", suggestionTextColor: "#4194f4", keyTextcolor: "843sdf", keyBorderColor: "#85fdsa", keyUnderLinecolor: "#54850s", isThemeDarkType: true)
            loadTheme(themeObject: themeObject)
        }
    }
    
    func keyboardTopBarDidTapKeyboardButton(_ topBar: KeyboardTopbar) {
        
    }
    
}

extension KeyboardViewController: KeyboardOverlayDelegate {
    func overlayDidTapHideButton(_ overlay: KeyboardOverlay) {
        hideOverlay()
        topBar.state = .initial
    }
}

extension KeyboardViewController: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: "cell")
        cell.textLabel?.text = "row \(indexPath.row)"
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("")
    }
}
