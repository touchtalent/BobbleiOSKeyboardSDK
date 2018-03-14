# Bobble IOS Keyboard SDK

## Overview
BobbleiOSKeyboard sdk provides complete solution to custom keyboard implementation on iOS. BobbleiOSKeyboard provides
following core IME features :

1. Word Suggestion
2. Word Prediction
3. Auto correct
4. English and Arabic language

This SDK exposes API endpoints to allow certain level of customization of IME.

## How to create custom keyboard

Import **BobbleKeyboardSDK.framework** to your iOS keyboard extension target. Create a custom class which extends 
**BobbleKeyboardViewController**, this class will act as the input view controller.

BobbleKeyboardSDK exposes two place holders which can contain customized view's and functionality, which are
1. Top Bar
2. Custom View

You can find the framework here : https://github.com/touchtalent/BobbleKeyboardSDKSampleApp/tree/master/BobbleSDKSampleApp/Frameworks

You can refer to sample app here : https://github.com/touchtalent/BobbleKeyboardSDKSampleApp

Below is the list of all UI configuration that is possible as part of customization.

Configuration | Description
------------- | -------------
![SDK](docs/2.png "BobbleIME SDK") | IME is opened on a input view that supports word suggestion
![SDK](docs/4.png "BobbleIME SDK") | IME is opened on a input view that supports word suggestion and custom top bar is made visible
![SDK](docs/5.png "BobbleIME SDK") | IME is opened on a input view and both top bar and custom view is visible
![SDK](docs/7.png "BobbleIME SDK") | IME is opened on a custom input view which supports word suggestion and both top bar and custom view is visible

When you are creating a custom keyboard extension, please make sure you have added following in Info.plist

![SDK](docs/infoplist.png "BobbleIME SDK")

BobbleKeyboardSDK provides following API endpoints:

#### 1. API viewWillAppear(animated)

The custom class that extends BobbleKeyboardViewController, need to override viewWillAppear(animated). viewWillAppear() is called when the keyboard service is triggered by system and before it gets visible to user. This is the starting point for view customization and all customization API calls must start from here.

**Example :**

```swift
import BobbleKeyboardSDK

class SampleKeyboardViewController: BobbleKeyboardViewController {

    override func viewWillAppear(_ animated: Bool) {
        // Add Customization API calls here
        super.viewWillAppear(animated)
    }

}
```

#### 2. API viewWillDisappear(animated)

The custom class that extends BobbleKeyboardViewController, may override viewWillDisappear(animated). viewWillDisappear() is called when keyboard service is triggered by system and its about to hide itself.

**Example :**

```swift
import BobbleKeyboardSDK

class SampleKeyboardViewController: BobbleKeyboardViewController {

    override func viewWillDisappear(_ animated: Bool) {
        // Add Customization API calls here
        super.viewWillDisappear(animated)
    }

}
```

#### 3. API showTopBar(UIView)

The custom class that extends BobbleKeyboardViewController can call showTopBar(UIView) API to show custom View in
keyboard's top bar place holder.

**Example :**

```swift
import UIKit
import BobbleKeyboardSDK

class SampleKeyboardViewController: BobbleKeyboardViewController {

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // Build custom view that need to be shown in the tob bar container
        let topBarView:UIView = prepareTopBar()
        setTopBar(topBarView)
    }
    
    func prepareTopBar() -> UIView {
        // Place code here to generate custom view that need to be shown in the top bar
    }
}
```

#### 4. API showCustomView(View)

The custom class that extends BobbleKeyboardViewController can call showCustomView(View) API to show a custom view
in the custom view container. When showCustomView(View) is called, the keyboard input view is
closed and the custom view is shown. If already a custom view is visible, it is replaced by the
newly provided custom view.

**Example :**

```swift
import UIKit
import BobbleKeyboardSDK

class SampleKeyboardViewController: BobbleKeyboardViewController {
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // Build custom view that need to be shown in the tob bar container
        let topBarView:UIView = prepareTopBar()
        setTopBar(topBarView)
    }
    
    func prepareTopBar() -> UIView {
        // Place code here to generate custom view that need to be shown in the top bar
        
        // Example of a button in top bar that's going to show custom view on click
        let topBarButton:UIButton = UIButton()
        topBarButton.addTarget(self, action: #selector(SampleKeyboardViewController.topBarButtonClicked(sender:)), for:     UIControlEvents.touchUpInside)
    }
    
    func topBarButtonClicked(sender: UIButton) {
        // Prepare the custom view
        let customView:UIView = prepareCustomView()
        // Call API to show the custom view and hide the keyboard input view
        showCustomView(view: customView);
    }
    
    func prepareCustomView() -> UIView {
        // Place code here to generate custom view that need to be shown in the top bar
    }
}
```

#### 5. API showKeyboardView()

The custom class that extends BobbleKeyboardViewController can call showKeyboardView() API to show keyboard input view
in case it was hidden due to previous call to showCustomView(View) and custom view was visible.
Calling showKeyboardView() will close visible custom view (if any) and will show keyboard input view.

**Example :**

```swift
import UIKit
import BobbleKeyboardSDK

class SampleKeyboardViewController: BobbleKeyboardViewController {
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // Build custom view that need to be shown in the tob bar container
        let topBarView:UIView = prepareTopBar()
        setTopBar(topBarView)
    }
    
    func prepareTopBar() -> UIView {
        // Place code here to generate custom view that need to be shown in the top bar
        
        // Example of a button in top bar that's going to show custom view on click
        let topBarButton:UIButton = UIButton()
        topBarButton.addTarget(self, action: #selector(SampleKeyboardViewController.topBarButtonClicked(sender:)), for:     UIControlEvents.touchUpInside)
        
        // Example of a button in top bar that's going to show keyboard view on click                
        let topBarCloseButton:UIButton = UIButton()
        topBarCloseButton.addTarget(self, action: #selector(SampleKeyboardViewController.topBarCloseButtonClicked(sender:)), for: UIControlEvents.touchUpInside)

    }
    
    func topBarButtonClicked(sender: UIButton) {
        // Prepare the custom view
        let customView:UIView = prepareCustomView()
        // Call API to show the custom view and hide the keyboard input view
        showCustomView(view: customView);
    }
    
    func topBarCloseButtonClicked(sender: UIButton) {
        // Call API to show keyboard input view and hide the custom view
        showKeyboardView();
    }
    
    func prepareCustomView() -> UIView {
        // Place code here to generate custom view that need to be shown in the top bar
    }
}
```
