//
//  WriteBoardViewController.swift
//  HufstorySampleApp
//
//  Created by 임동혁 on 2022/07/18.
//

import UIKit

class WriteBoardViewController: UIViewController {
 
    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var contentsTextView: UITextView!
    @IBOutlet weak var confirmButton: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    // TextView 테두리
    private func configureContetnsTextView() {
        let borderColor = UIColor(red: 220/255, green: 220/255, blue: 220/255, alpha: 1.0)
        self.contentsTextView.layer.borderColor = borderColor.cgColor
        self.contentsTextView.layer.borderWidth = 0.5
        self.contentsTextView.layer.cornerRadius = 5.0
    }
    
    private func titleTextFieldDidChange(_ textField: UITextField) {
        self.activateButton()
    }
    
    private func contentsTextViewDidChange(_ textView: UITextView) {
        self.activateButton()
    }
    
    
    @IBAction func tapConfirmButton(_ sender: UIBarButtonItem) {
    }
    
    private func activateButton() {
        self.confirmButton.isEnabled = !(self.titleTextField.text?.isEmpty ?? true) && !(self.contentsTextView.text.isEmpty)
    }
}

extension WriteBoardViewController: UITextViewDelegate {
    func textViewDidChange(_ textView: UITextView) {
        self.activateButton()
    }
}
