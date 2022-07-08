//
//  LoginViewController.swift
//  HufstorySampleApp
//
//  Created by 임동혁 on 2022/07/01.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var errorMessageLabel: UILabel!
    @IBOutlet weak var nextButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nextButton.layer.cornerRadius = 30
        nextButton.isEnabled = false
        
        emailTextField.delegate = self
        passwordTextField.delegate = self
        
        // 화면 들어서자마자 커서 위치하게 만들기
        emailTextField.becomeFirstResponder()
    }
    
    
    @IBAction func nextButtonTapped(_ sender: UIButton) {
    }
}

extension LoginViewController: UITextFieldDelegate {
    
    // 이메일 비밀번호 입력 끝났을 때 키보드 내려가게
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        view.endEditing(true)
        return false
    }
    
    // 입력이 되면 다음 버튼 활성화
    func textFieldDidEndEditing(_ textField: UITextField) {
        let isEmailEmpty = emailTextField.text == ""
        let isPasswordEmpty = passwordTextField.text == ""
        nextButton.isEnabled = !isEmailEmpty && !isPasswordEmpty // 둘다 아닐 때
    }
}
