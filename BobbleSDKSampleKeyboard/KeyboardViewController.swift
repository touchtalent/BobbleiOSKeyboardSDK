
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


class KeyboardViewController: BobbleKeyboardViewController, BobbleWordCommitDelegate,touchIdDelegate , UITextFieldDelegate,TextInputDelegate , WordSuggestionDelegate, CustomInputViewDelegate{
    

    
    func keyDidPressed(text: String) {
        
        //1. " " space pressed
        //2. "\n" return pressed
        //please update customInputViewText every time
        self.updateCustomInputViewText()
    }
    
    func backSpaceDidPressed() {
        
        //please update customInputViewText every time
        self.updateCustomInputViewText()
    }

    func updateCustomInputViewText()
    {
        customInputViewText = ""//update text after every change
    }
   
  
    //API for getting text from input textfield
   // let str:String =  getTextFromInputTextfield()
    
    
 //   let view:UIView = UIView(frame: CGRect(x: 20, y: 0, width: 200, height: 45))
//           view.backgroundColor = .red
//           self.loadSuggestionView(view: view)
    
   //  toggleSettingView(open:true) true for open and false for close settingview
    
    
    //viewOverSuggestionBarframe for change frame dynamically
   // viewOverSuggestionBarframe = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: 45)
 
  /////////////////////WordSuggestionDelegate//////////////////////////////////
    
    func bobbleKeyboard(_ bobbleKeyboard: BLKeyboardViewController, keyCharArray: [String], keyFrameArray: [CGRect], keyboardWidth:CGFloat, keyboardheight:CGFloat ) {
           print("char arr \(keyCharArray)")
           print("char arr \(keyFrameArray)")
       }
    
    func bobbleKeyboard(typedWord: String, ChoosedWord: String, source:Source, wordsArray:[String]) {
        print("typedWord = \(typedWord) and ChoosedWord = \(ChoosedWord) and source = \(source) and wordsArray = \(wordsArray)")
    }
    
    func bobbleKeyboard(prevWord: String, autoCorrectedWord: String, isAutoCorrectWordAccepted: Bool, source:Source, wordsArray:[String]) {
        print("prevWord = \(prevWord) and autoCorrectedWord = \(autoCorrectedWord) and isAutoCorrectWordAccepted = \(isAutoCorrectWordAccepted) and source = \(source) and wordsArray = \(wordsArray)")
    }
    
    func bobbleKeyboard(_ bobbleKeyboard: BLKeyboardViewController, nextWordsfor word: String, previousWord: String, pressedCharacter: String, isTextBeforeInput: Bool, textBeforeInput: String, touchPoint:CGPoint, completionHandler:(WordSuggestion) -> Void)  {
        let wordSuggestionStruct = WordSuggestion()
        wordSuggestionStruct.arrWordSuggestion = ["raqm","rawm","ramd","rfam","ragm"]
        wordSuggestionStruct.autocorrect = true

        completionHandler(wordSuggestionStruct)
        //return wordSuggestionStruct
    }
    
    func bobbleKeyboard(_ bobbleKeyboard: BLKeyboardViewController, wordPridictionfor word: String, previousWord: String, source: predictionSource, pressedCharacter:String, isTextBeforeInput: Bool, textBeforeInput: String) -> [String] {
        return  []
    }
    
  //  func bobbleKeyboard(_ bobbleKeyboard: BLKeyboardViewController, key)
        
//////////////////////////////////////////////////////////////////////////
    
    // TextInputViewDelegate
    
    func copyfromtextView(copiedText:String)
    {
        print("copy = \(copiedText)")
    }
     func pasteIntextView(pasteText:String)
     {
       print("paste = \(pasteText)")
    }

    
    func textViewShouldReturn(textView: TextInputView) {
        restoreInputTarget()
        print(textView)
    }
    
    func textViewShouldBeginEditing(textView: TextInputView) {
        
        if currentInputTextView != nil && currentInputTextView != textView
        {
            print("str = \(currentInputTextView!.getText())")
            currentInputTextView?.hideBlinkView()
        }
        currentInputTextView = textView
        setInputTarget(textView: textView, keyboardMode:0, isSdkInputView:true)
       // showInputView(keyboardMode:0)
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
//
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        setBobbleWordCommitDelegate(delegate: self)
        setCustomInputViewDelegate(delegate: self)
       
        TouchIdDelegate(delegate: self)
        setThresholdValueForAutoCorrection(value: 0.15)
        setWordSuggestionDelegate(delegate: self)
        
        topBar = getTopBar()
        setTopBar(view: topBar)
        //let str:String =  getTextFromInputTextfield()
        
    }
    
//    override func viewDidAppear(_ animated: Bool) {
//        super.viewDidAppear(animated)
//
//
//    }
    
    
    private func getTopBar() -> KeyboardTopbar {
        let keyboardTopBar = KeyboardTopbar.loadView(fromNib: "KeyboardTopbar", withType: KeyboardTopbar.self)
        keyboardTopBar.frame = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.size.width, height: 100)
            
         //   KeyboardTopbar.loadFromNib(owner: self)
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
        //        let font:[String] = getAllFontName()
        //        print(font)
        //        changeFont(fontName: font[0])
       // setKeyboardType(keyboardMode: 0)
        viewOverSuggestionBarframe = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: 45)
        
    }
    
    func keyboardTopBarDidTapCameraButton(_ topBar: KeyboardTopbar) {
        
        
              hideKeyboardView()
                 openQRCodeScanner()
        //        let font:[String] = getAllFontName()
        //        print(font)
        //        changeFont(fontName: font[8])
       // setKeyboardType(keyboardMode: 10)
        //  sendTextToConnectedInput(text: "Hi this is Yash")
    }
    
    func keyboardTopBarDidTapTouchButton(_ topBar: KeyboardTopbar) {
       // touchIdClicked()
        
        
        
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
        txtInput.isPasswordProtacted = true
        txtInput.setMultiLine(set: false)
        InputViewBy.btnDelete.addTarget(self, action: #selector(KeyboardViewController.deleteAllChar), for: .touchUpInside)
        
//        let button = UIButton(frame: CGRect(x: InputViewBy.btnDelete.o, y: 10, width: 60, height: 60))
//               button.setTitle("Show", for: .normal)
//               button.addTarget(self, action: #selector(KeyboardViewController.deleteAllChar), for: .touchUpInside)
//               customView.addSubview(button)
        
        let txtInput1:TextInputView = TextInputView(frame: CGRect(x: 67, y: 77, width: InputViewBy.viewForText1.frame.size.width
            , height: InputViewBy.viewForText1.frame.size.height))
        
        let language:String = UserDefaults.standard.value(forKey: "Language") as! String
        
        if language == "ar"
        {
             txtInput1.setPlaceHolder(str: " تعيين عنصر نائب", placeholderColor: UIColor.lightGray, placeHolderFont: UIFont(name:"Helvetica" , size: 15)!)
        }
        else
        {
             txtInput1.setPlaceHolder(str: " set place holder", placeholderColor: UIColor.lightGray, placeHolderFont: UIFont(name:"Helvetica" , size: 15)!)
        }
       
        txtInput1.backgroundColor = UIColor.red
        txtInput1.textFont =  UIFont(name: "Helvetica", size: 20)!
        txtInput1.textColor = UIColor.black
//        txtInput1.isMultiline = true
        txtInput1.setMultiLine(set: false)
        txtInput1.textDelegate = self
        InputViewBy.addSubview(txtInput1)
        
        
        
        
        
        
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
    
    
    @objc func deleteAllChar()
    {
        self.currentInputTextView?.deleteAllcharacters()
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
        feedbackInputView.isPasswordProtacted = true
        feedbackInputView.textDelegate = self
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
        
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        
        openViewForPrivateTextField()
    }
    
    @objc func restoreButtonClicked() {
        restoreInputTarget()
    }
    
    @objc func showButtonClicked() {
       // currentInputTextView!.deleteAllcharacters()
        setKeyboardType(keyboardMode: 10)
        showKeyboardView()
    }
    
    func keyboardTopBarDidTapBotButton(_ topBar: KeyboardTopbar) {
        toggleSettingView(open:false)
//        if isEnglishLanguage
//        {
//            isEnglishLanguage = !isEnglishLanguage
//            setKeyboardLanguage(value: "en")
//        }
//        else
//        {
//            isEnglishLanguage = !isEnglishLanguage
//            setKeyboardLanguage(value: "ar")
//        }
    }
    
    func keyboardTopBarDidTapPayButton(_ topBar: KeyboardTopbar) {
        
      //  topbarframe  = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: 45)
        
       // let btn:UIButton = UIButton()
        
        toggleSettingView(open:true)
//        let view:UIView = UIView(frame: CGRect(x: 20, y: 0, width: 200, height: 45))
//        view.backgroundColor = .red
//        self.loadSuggestionView(view: view)
        
        //yash
//        if isKeyboardTheme
//        {
//            isKeyboardTheme = !isKeyboardTheme
//            loadTheme(themeObject: nil)
//        }
//        else
//        {
//            let image:UIImage = UIImage(named: "horse.jpg")!
//
//            //            let z:Data = image.pngData()!
//            //            UserDefaults.standard.set(z, forKey: "backgroundImage")
//            //
//            //
//            //
//            //
//            //            var backgroundImage:UIImage?
//            //            if let dataImage:Data = UserDefaults.standard.data(forKey: "backgroundImage")
//            //            {
//            //                backgroundImage = UIImage.init(data: dataImage)
//            //            }
//            //
//
//
//            isKeyboardTheme = !isKeyboardTheme
//            let themeObject:KeyboardThemeModel = KeyboardThemeModel(keyboardBackgroundColor:"#f441f1", keyColor: "#00FFFFFF", suggestionBarColor: "#f441f1", suggestionDividerColor: "#85f441", suggestionTextColor: "#4194f4", keyTextcolor: "843sdf", keyBorderColor: "#85fdsa", keyUnderLinecolor: "#54850s", isThemeDarkType: true, keyboardBackgroundImage: image)
//            loadTheme(themeObject: themeObject)
//        }
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
