//
//  RegisterScreen.swift
//  Project
//
//  Created by Cuong DT on 11/28/19.
//  Copyright © 2019 Cuong DT. All rights reserved.
//

import UIKit

class RegisterScreen: UIViewController {

    @IBOutlet weak var viewTitle: UIView!
    
    @IBOutlet weak var viewUser: UIView!
    
    @IBOutlet weak var viewPass: UIView!
    
    @IBOutlet weak var viewPassRepeat: UIView!
    
    @IBOutlet weak var txtDieuKhoan: UITextView!
    @IBOutlet weak var btnRegister: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        editLayout()
    }
    

        func editLayout(){
            viewTitle.layer.cornerRadius = self.viewTitle.frame.height/2
            viewUser.layer.cornerRadius = self.viewUser.frame.height/2
            viewPass.layer.cornerRadius = self.viewPass.frame.height/2
            viewPassRepeat.layer.cornerRadius = self.viewPassRepeat.frame.height/2
            txtDieuKhoan.layer.cornerRadius = self.txtDieuKhoan.frame.height/2
            btnRegister.layer.cornerRadius = self.btnRegister.frame.height/2
        }

}
