
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

class KeyboardViewController: BobbleKeyboardViewController {
    
    required convenience init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        self.init(nibName: nil, bundle: nil)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    var vw:TextInputView = TextInputView()
    
    override func viewDidAppear(_ animated: Bool) {
        
        
        //I made Api and comment out ....for Testing purpose U can un-comment and Use it
        
     
      
      
     // add Top Bar
        
//        let viewTop:UIView = UIView()
//        viewTop.backgroundColor = UIColor.blue
//       setTopBar(view: viewTop)
        
        
        
        
        
        // add cutomView
        //height for custom view "ScreenWidth >= 400 ? 226  : 216" like standard keyboard
        
        
//        let customView = UIView()
//        customView.frame = CGRect(x: 0, y:0, width: self.view.bounds.width, height:180)
//        customView.backgroundColor = UIColor.clear
        
        
        //TextInputView is Custom text input view
        // set "isPasswordProtacted" true for password field
        //and for get TEXTFIELD text or password ...call api getText()
        
//       let feedbackInputView = TextInputView(frame: CGRect(x: 20, y: 10, width: 300, height: 40))
//        feedbackInputView.backgroundColor = UIColor.white
//        feedbackInputView.isHidden = false
//        feedbackInputView.layer.cornerRadius = 4
//        feedbackInputView.layer.masksToBounds = true
//        feedbackInputView.isPasswordProtacted = true
//        customView.addSubview(feedbackInputView)
//        vw = feedbackInputView
//
//        let feedbackInputView1 = TextInputView(frame: CGRect(x: 20, y: 70, width: 300, height: 40))
//        feedbackInputView1.backgroundColor = UIColor.white
//        feedbackInputView1.isHidden = false
//        feedbackInputView1.layer.cornerRadius = 4
//        feedbackInputView1.layer.masksToBounds = true
//        feedbackInputView1.isPasswordProtacted = false
//        customView.addSubview(feedbackInputView1)
//
//        showCustomView(view: customView )
////
//       setInputTarget(textView: feedbackInputView)
        
//       showKeyboardView()
    
        
        // chnage Settings
        //setIMESettings(key: BobbleIMESettings.WORD_SUGGESTION, value: true)
    
    }
    
//    override func viewWillDisappear(_ animated: Bool) {
//        let str:String = vw.getText()
//        print(str)
//    }
}


