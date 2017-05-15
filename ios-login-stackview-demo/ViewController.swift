//
//  ViewController.swift
//  ios-login-stackview-demo
//
//  Created by Eiji Kushida on 2017/05/15.
//  Copyright © 2017年 Eiji Kushida. All rights reserved.
//

import UIKit

final class ViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var emailErrorLabel: UILabel!
    @IBOutlet weak var passwordErrorLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        showEmailErrorLabel(isHidden: true)
        showPasswordErrorLabel(isHidden: true)
    }

    @IBAction func didTapLoginbutton(_ sender: UIButton) {

        if let isEmpty = emailTextField.text?.isEmpty {
            showEmailErrorLabel(isHidden: !isEmpty)
        }

        if let isEmpty = passwordTextField.text?.isEmpty {
            showPasswordErrorLabel(isHidden: !isEmpty)
        }
    }

    /// Emailのバリデーションチェックエラーラベルの表示切り替え
    ///
    /// - Parameter isHidden: 表示/非表示
    func showEmailErrorLabel(isHidden: Bool) {

        UIView.animate(withDuration: 0.75) { 
            self.emailErrorLabel.isHidden = isHidden
        }
    }

    /// Emailのバリデーションチェックエラーラベルの表示切り替え
    ///
    /// - Parameter isHidden: 表示/非表示
    func showPasswordErrorLabel(isHidden: Bool) {

        UIView.animate(withDuration: 0.75) {
            self.passwordErrorLabel.isHidden = isHidden
        }
    }
}
