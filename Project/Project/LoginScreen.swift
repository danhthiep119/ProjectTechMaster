//
//  LoginScreen.swift
//  Project
//
//  Created by Cuong DT on 11/26/19.
//  Copyright © 2019 Cuong DT. All rights reserved.
//

import UIKit

class LoginScreen: UIViewController {

    
    @IBOutlet weak var btnDangNhap: UIButton!
    @IBOutlet weak var btnDangKy: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        editLayout()
    }
    
    func editLayout(){
        btnDangNhap.layer.cornerRadius = btnDangNhap.frame.height/4
        btnDangKy.layer.cornerRadius = btnDangKy.frame.height/4
    
    }
    

    @IBAction func btnDangNhap(_ sender: Any) {
    }
    @IBAction func btnDangKy(_ sender: Any) {
    }
}
