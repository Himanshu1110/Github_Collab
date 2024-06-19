//
//  RegisterScreenVC.swift
//  Github_Collab_Task
//
//  Created by webcodegenie on 19/06/24.
//

import UIKit

class RegisterScreenVC: UIViewController {

    @IBOutlet weak var VwRegisterBgView: UIView!
    
    @IBOutlet weak var TfEmail: UITextField!
    @IBOutlet weak var TfPassword: UITextField!
    @IBOutlet weak var TfConfirmPassword: UITextField!
    
    @IBOutlet weak var btnShowPassword: UIButton!
    var DoShowPassword = false
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        SetUI()
        
    }
    
    //MARK: - All IBActions
    
    @IBAction func OnClickShowAndHidePassword(_ sender: Any) {
        if DoShowPassword{
            DoShowPassword = false
            btnShowPassword.setImage(UIImage(named: "Password Hide"), for: .normal)
            TfPassword.isSecureTextEntry = true
            TfConfirmPassword.isSecureTextEntry = true
        }
        else{
            DoShowPassword = true
            btnShowPassword.setImage(UIImage(named: "Password Show"), for: .normal)
            TfPassword.isSecureTextEntry = false
            TfConfirmPassword.isSecureTextEntry = false
        }
    }
    
    @IBAction func OnClickRegisterUser(_ sender: Any) {
        
        if(TfEmail.text?.count == 0 || TfPassword.text?.count == 0 || TfConfirmPassword.text?.count == 0){
            ShowAlertBox(Title: "No field should be Empty !", Message: "")
        }
        else if( TfPassword.text?.count ?? 0 <= 8 ){
            ShowAlertBox(Title: "Password length should be More than 8 !", Message: "")
        }
        else if ( TfPassword.text != TfConfirmPassword.text){
            ShowAlertBox(Title: "Password & Confirm Password should be same.", Message: "")
        }
        else{
            SaveIdAndPass()
            self.navigationController?.popViewController(animated: true)
        }
        
    }
    
    
    @IBAction func OnClickGotoLoginScreen(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    
    //MARK: - All Defined Functions
    
    func SaveIdAndPass(){
        UserDefaults.standard.set(TfEmail.text?.lowercased(), forKey: "Email")
        UserDefaults.standard.set(TfPassword.text, forKey: "Password")
        UserDefaults.standard.set(false, forKey: "IsRedirect")
    }
    
    func SetUI(){
        VwRegisterBgView.layer.cornerRadius = 10
        VwRegisterBgView.layer.borderWidth = 2
        
        DoShowPassword = false
        btnShowPassword.setImage(UIImage(named: "Password Hide"), for: .normal)
        TfPassword.isSecureTextEntry = true
        TfConfirmPassword.isSecureTextEntry = true
    }

}

extension UIViewController{
    func ShowAlertBox(Title: String , Message : String){
        let Alert = UIAlertController(title: Title, message: Message, preferredStyle: UIAlertController.Style.alert)
        
        Alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: { (action: UIAlertAction!) in
//            print("Handle Ok logic here")
            Alert.dismiss(animated: true)
        }))
        self.present(Alert, animated: true, completion: nil)
    }
}
