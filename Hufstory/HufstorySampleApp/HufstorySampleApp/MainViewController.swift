//
//  MainViewController.swift
//  HufstorySampleApp
//
//  Created by 임동혁 on 2022/07/08.
//

import UIKit
import FirebaseAuth

class MainViewContrller: UIViewController {
    

    @IBOutlet weak var freeBoardButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 뒤로가기
        navigationController?.interactivePopGestureRecognizer?.isEnabled = false
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // back버튼 삭제
        navigationController?.navigationBar.isHidden = true
        
    }
}
