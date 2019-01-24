
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
import AVFoundation

class OpenViewControllerForTextField: UIViewController {

    
    
//    lazy var reader: QRCodeReader = QRCodeReader()
//    lazy var readerVC: QRCodeReaderViewController = {
//        let builder = QRCodeReaderViewControllerBuilder {
//            $0.reader                  = QRCodeReader(metadataObjectTypes: [.qr], captureDevicePosition: .back)
//            $0.showTorchButton         = true
//            $0.preferredStatusBarStyle = .lightContent
//
//            $0.reader.stopScanningWhenCodeIsFound = false
//        }
//
//        return QRCodeReaderViewController(builder: builder)
//    }()
    
    
//    override func viewDidAppear(_ animated: Bool) {
//
//        guard checkScanPermissions() else { return }
//
//        readerVC.modalPresentationStyle = .formSheet
//        readerVC.delegate               = self
//
//        readerVC.completionBlock = { (result: QRCodeReaderResult?) in
//            if let result = result {
//                print("Completion with result: \(result.value) of type \(result.metadataType)")
//
//                let appDelegate = UIApplication.shared.delegate as! AppDelegate
//                let bundleId:String = appDelegate.parentBundleId ?? ""
//                SystemApplicationManager.sharedManager.openApplication(bundleID: bundleId)
//            }
//        }
//
//        present(readerVC, animated: true, completion: nil)
//
//
//
//
//    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let button = UIButton();
        button.setTitle("Submit", for: .normal)
        button.setTitleColor(UIColor.blue, for: .normal)
        button.frame = CGRect(x: self.view.bounds.width/2 - 100, y: 150, width: 200, height: 100)
        button.addTarget(self, action: #selector(buttonClicked), for: .touchUpInside)
        // button.addTarget(self, action: Selector(("buttonPressed:")), for: .touchUpInside)
        self.view.addSubview(button)
        // Do any additional setup after loading the view, typically from a nib.
        
        }

    
        @objc func buttonClicked(sender : UIButton){
            
//                    guard checkScanPermissions() else { return }
//
//                    readerVC.modalPresentationStyle = .formSheet
//                    readerVC.delegate               = self
//
//                    readerVC.completionBlock = { (result: QRCodeReaderResult?) in
//                        if let result = result {
//                            print("Completion with result: \(result.value) of type \(result.metadataType)")
            
                                        let appDelegate = UIApplication.shared.delegate as! AppDelegate
                                        let bundleId:String = appDelegate.parentBundleId ?? ""
                                        SystemApplicationManager.sharedManager.openApplication(bundleID: bundleId)
                       // }
                   // }
            
                  //  present(readerVC, animated: true, completion: nil)//
            
    

    
        }
    
    
    
    
    
    // MARK: - Actions
    
//    private func checkScanPermissions() -> Bool {
//        do {
//            return try QRCodeReader.supportsMetadataObjectTypes()
//        } catch let error as NSError {
//            let alert: UIAlertController
//
//            switch error.code {
//            case -11852:
//                alert = UIAlertController(title: "Error", message: "This app is not authorized to use Back Camera.", preferredStyle: .alert)
//
//                alert.addAction(UIAlertAction(title: "Setting", style: .default, handler: { (_) in
//                    DispatchQueue.main.async {
//                        if let settingsURL = URL(string: UIApplication.openSettingsURLString) {
//                            UIApplication.shared.openURL(settingsURL)
//                        }
//                    }
//                }))
//
//                alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
//            default:
//                alert = UIAlertController(title: "Error", message: "Reader not supported by the current device", preferredStyle: .alert)
//                alert.addAction(UIAlertAction(title: "OK", style: .cancel, handler: nil))
//            }
//
//            present(alert, animated: true, completion: nil)
//
//            return false
//        }
//    }
    
//    @IBAction func scanInModalAction(_ sender: AnyObject) {
//        guard checkScanPermissions() else { return }
//
//        readerVC.modalPresentationStyle = .formSheet
//        readerVC.delegate               = self
//
//        readerVC.completionBlock = { (result: QRCodeReaderResult?) in
//            if let result = result {
//                print("Completion with result: \(result.value) of type \(result.metadataType)")
//            }
//        }
//
//        present(readerVC, animated: true, completion: nil)
//    }
    
 //   func scanQRCode()
//    {
//    guard checkScanPermissions() else { return }
//
//    readerVC.modalPresentationStyle = .formSheet
//    readerVC.delegate               = self
//
//    readerVC.completionBlock = { (result: QRCodeReaderResult?) in
//    if let result = result {
//    print("Completion with result: \(result.value) of type \(result.metadataType)")
//
//    let appDelegate = UIApplication.shared.delegate as! AppDelegate
//    let bundleId:String = appDelegate.parentBundleId ?? ""
//    SystemApplicationManager.sharedManager.openApplication(bundleID: bundleId)
//    }
//    }
//
//    present(readerVC, animated: true, completion: nil)
//}
    
//    @IBAction func scanInPreviewAction(_ sender: Any) {
//        guard checkScanPermissions(), !reader.isRunning else { return }
//
//        reader.didFindCode = { result in
//            print("Completion with result: \(result.value) of type \(result.metadataType)")
//        }
//
//        reader.startScanning()
//    }
    
    // MARK: - QRCodeReader Delegate Methods
    
//    func reader(_ reader: QRCodeReaderViewController, didScanResult result: QRCodeReaderResult) {
//        reader.stopScanning()
//
//        dismiss(animated: true) { [weak self] in
//            let alert = UIAlertController(
//                title: "QRCodeReader",
//                message: String (format:"%@ (of type %@)", result.value, result.metadataType),
//                preferredStyle: .alert
//            )
//            alert.addAction(UIAlertAction(title: "OK", style: .cancel, handler: nil))
//
//            self?.present(alert, animated: true, completion: nil)
//        }
//    }
    
//    func reader(_ reader: QRCodeReaderViewController, didSwitchCamera newCaptureDevice: AVCaptureDeviceInput) {
//        print("Switching capturing to: \(newCaptureDevice.device.localizedName)")
//    }
    
//    func readerDidCancel(_ reader: QRCodeReaderViewController) {
//        reader.stopScanning()
//
//        let appDelegate = UIApplication.shared.delegate as! AppDelegate
//        let bundleId:String = appDelegate.parentBundleId ?? ""
//        SystemApplicationManager.sharedManager.openApplication(bundleID: bundleId)
//        dismiss(animated: true, completion: nil)
//    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

