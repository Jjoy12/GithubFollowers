//
//  GFBodyLabel.swift
//  GithubFollowers
//
//  Created by Jerrion Joy on 12/27/20.
//

import UIKit

class GFBodyLabel: UILabel {

    override init(frame: CGRect) {
        super.init(frame: frame)
        
        configureBodyLabel()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    init(textAlignment: NSTextAlignment) {
        
        super.init(frame: .zero)
        self.textAlignment = textAlignment
        configureBodyLabel()
        
    }
    
    private func configureBodyLabel(){
        textColor = .secondaryLabel
        font = UIFont.preferredFont(forTextStyle: .body)
        adjustsFontSizeToFitWidth = true
        minimumScaleFactor = 0.75
        textAlignment = .center
        lineBreakMode = .byWordWrapping
        translatesAutoresizingMaskIntoConstraints = false
        
    }
}
