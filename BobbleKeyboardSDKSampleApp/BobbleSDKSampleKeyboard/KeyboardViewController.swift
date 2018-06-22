
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
//import TextInputView

class KeyboardViewController: BobbleKeyboardViewController, BobbleCallBack {
    
    
    func onWordCommit(string: String) {
         print("callBackString:",string)
    }
    
    
    
    required convenience init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        self.init(nibName: nil, bundle: nil)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    var vw:TextInputView = TextInputView()
    
    override func viewDidAppear(_ animated: Bool) {
        
        // inherit BobbleCallBack delegate
        //implement onWordCommit func
        //set delegate for onCommit callBack
      //  setCallBackInputTarget(delegate: self)
        
        
        
       //Customized theme
        
//        let themeObject:KeyboardThemeModel = KeyboardThemeModel(keyboardBackgroundColor: "#f4b642", keyColor: "#f44d41", suggestionBarColor: "#f441f1", suggestionDividerColor: "#85f441", suggestionTextColor: "#4194f4", keyTextcolor: "843sdf", keyBorderColor: "#85fdsa", keyUnderLinecolor: "#54850s", isThemeDarkType: true)
//         loadTheme(themeObject: themeObject)
        
        
        
        
        
        
        
        
//        let viewTop:UIView = UIView()
//        viewTop.backgroundColor = UIColor.blue
//        setTopBar(view: viewTop)
//        hideTopBar()
//        showTopBar()
        
        
        
        
        
//        let overlat = UIView()
//        overlat.backgroundColor = UIColor.orange
//        overlat.alpha = 0.5
//        showOverlay(view: overlat)
//        hideOverlay()
        
        
        
        
        
        
        
        
//        let customView = UIView()
//        customView.frame = CGRect(x: 0, y:0, width: self.view.bounds.width, height:100)
//        customView.backgroundColor = UIColor.green
//
//        let feedbackInputView = TextInputView(frame: CGRect(x: 20, y: 10, width: 300, height: 40))
//        feedbackInputView.backgroundColor = UIColor.white
//        feedbackInputView.isHidden = false
//        feedbackInputView.layer.cornerRadius = 4
//        feedbackInputView.layer.masksToBounds = true
//        feedbackInputView.isPasswordProtacted = true
//        customView.addSubview(feedbackInputView)
//        vw = feedbackInputView
//        showCustomView(view: customView )
//        setInputTarget(textView: feedbackInputView)
        
        
        
        
        
        
        
        //        restoreInputTarget()
        //
        //        showKeyboardView()
        
       
        
        //        let suggestionV = UIView(frame: CGRect(x: 45, y: 0, width: <#T##CGFloat#>, height: <#T##CGFloat#>))
        //        loadSuggestionView(view: <#T##UIView#>)
        
        
   
        
//        setIMESettings(key: BobbleIMESettings.WORD_SUGGESTION, value: true)
//        setIMESettings(key: BobbleIMESettings.AUTO_CORRECTION, value: true)
//        setIMESettings(key: BobbleIMESettings.AUTO_CAPITALIZATION, value: true)
//        setIMESettings(key: BobbleIMESettings.LOWERCASE_KEY_CAPS, value: true)
//        setIMESettings(key: BobbleIMESettings.KEYPAD_CLICK_SOUND, value: true)
        
        
        
        
       // setKeyboardLanguage(value: "ar")
        
    
        
    }
    

}


