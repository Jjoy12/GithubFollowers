//
//  SearchVC.swift
//  GithubFollowers
//
//  Created by Jerrion Joy on 12/26/20.
//

import UIKit

class SearchVC: UIViewController {

//    Variables to initalize custom Image view, Text field, and Button
    let logoImageView = UIImageView()
    let userNameTextField = GFTextField()
    let callToActionButton = GFButton(backgroundColor: .systemGreen, title: "Get Followers")

    override func viewDidLoad() {
        super.viewDidLoad()
        configureLogoImageView()
        configureUserTextField()
        configureCallToActionButton()
        createKeyBoardTapGesture()

        view.backgroundColor = .systemBackground
    }
//Gets called every time the screen appears
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.isNavigationBarHidden = true
    }

// create Dismiss keyboard varibale and initalizr UITapaGesture
    func createKeyBoardTapGesture() {
        let tap = UITapGestureRecognizer(target: self.view, action: #selector(UIView.endEditing))
        view.addGestureRecognizer(tap)
        
        
    }

 
// Configuring logo image view
    func configureLogoImageView() {
        view.addSubview(logoImageView)
        logoImageView.translatesAutoresizingMaskIntoConstraints = false
        logoImageView.image = UIImage(named: "gh-logo")!
        
        NSLayoutConstraint.activate([
            logoImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 80),
            logoImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            logoImageView.heightAnchor.constraint(equalToConstant: 200),
            logoImageView.widthAnchor.constraint(equalToConstant: 200)
            
        
        ])
    }

//Configuring Text field
    func configureUserTextField() {
        view.addSubview(userNameTextField)
        
        NSLayoutConstraint.activate([
            
            userNameTextField.topAnchor.constraint(equalTo: logoImageView.bottomAnchor, constant: 48),
            userNameTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            userNameTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
            userNameTextField.heightAnchor.constraint(equalToConstant: 50)
            
        
        ])
        
    }
    

// Configuring call to action Button
    func configureCallToActionButton() {
        view.addSubview(callToActionButton)
        
        NSLayoutConstraint.activate([
            
            callToActionButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -50),
            callToActionButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            callToActionButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
            callToActionButton.heightAnchor.constraint(equalToConstant: 50)
            
            
        ])
        
    }


}
