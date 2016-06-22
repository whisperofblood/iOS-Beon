//
//  LoginVC.swift
//  Beon
//
//  Created by Anton Kashpor on 6/17/16.
//  Copyright © 2016 Beon. All rights reserved.
//

import Foundation
import UIKit
import FirebaseAuth

class LoginVC: UIViewController {
    
    //Footer views
    @IBOutlet weak var termsLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        setTermsText()
        
//        var myMutableString = NSMutableAttributedString()
//         myMutableString.addAttribute(NSForegroundColorAttributeName, value: UIColor.redColor(), range: NSRange(location:2,length:4))
//        
//        termsLabel.attributedText = myMutableString
    }
    
//    MARK:Set colours from html
    func setTermsText() {
        let htmlString = "By signing in, you agree to our <b>Terms</b> and <b>Privacy Policy</b>"
        
        let encodedData = htmlString.dataUsingEncoding(NSUTF8StringEncoding)!
        let attributedOptions = [NSDocumentTypeDocumentAttribute: NSHTMLTextDocumentType]
        do {
            let attributedString = try NSAttributedString(data: encodedData, options: attributedOptions, documentAttributes: nil)
            termsLabel.attributedText = attributedString
        } catch _ {
            print("Cannot create attributed String")
        }
    }
}
