//
//  LoginViewController.swift
//  HufstorySampleApp
//
//  Created by 임동혁 on 2022/07/01.
//

import UIKit
import FirebaseAuth

class LoginViewController: UIViewController {
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var errorMessageLabel: UILabel!
    @IBOutlet weak var nextButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nextButton.layer.cornerRadius = 30
        nextButton.isEnabled = false
        
        emailTextField.layer.cornerRadius = 10
        emailTextField.layer.borderColor = UIColor.white.cgColor
        emailTextField.layer.borderWidth = 1
        
        passwordTextField.layer.cornerRadius = 10
        passwordTextField.layer.borderColor = UIColor.white.cgColor
        passwordTextField.layer.borderWidth = 1
        
        nextButton.layer.cornerRadius = 30
        nextButton.layer.borderColor = UIColor.white.cgColor
        nextButton.layer.borderWidth = 1
        
        emailTextField.delegate = self
        passwordTextField.delegate = self
        
        // 화면 들어서자마자 커서 위치하게 만들기
        emailTextField.becomeFirstResponder()
    }
    
    
    @IBAction func nextButtonTapped(_ sender: UIButton) {
        
        let email = emailTextField.text ?? ""
        let password = passwordTextField.text ?? ""
        
        // 신규 사용자 생성
        Auth.auth().createUser(withEmail: email, password: password) { [weak self] authResult, error in guard let self = self else { return }
            
            self.showMainViewController() // 로그인이 제대로 되었을 때 다음 화면으로 넘어감
        }
    }
    
    private func showMainViewController() {
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        let mainViewController = storyboard.instantiateViewController(withIdentifier: "MainViewController")
        mainViewController.modalPresentationStyle = .fullScreen
        navigationController?.show(mainViewController, sender: nil)
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
