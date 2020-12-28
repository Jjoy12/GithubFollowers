//
//  UIViewController+ext.swift
//  GithubFollowers
//
//  Created by Jerrion Joy on 12/27/20.
//

import UIKit

extension UIViewController{
    
    func presentGFAlertOnMainThread(title: String, message: String, buttonTitle: String){
        DispatchQueue.main.async {
            let alertVC = GFAlertVC(title: title, message: message, buttonTitle: buttonTitle)
            alertVC.modalPresentationStyle = .overFullScreen
            alertVC.modalTransitionStyle = .flipHorizontal
            self.present(alertVC, animated: true)
        }
    }
}
