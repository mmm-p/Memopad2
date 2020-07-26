//
//  MemoViewController.swift
//  Memopad2
//
//  Created by 柳川万結 on 2019/12/13.
//  Copyright © 2019 柳川万結. All rights reserved.
//

import UIKit

class MemoViewController: UIViewController,UITextFieldDelegate{
    
    @IBOutlet var titleTextField: UITextField!
    @IBOutlet var contentTextView: UITextView!
    
    var saveData: UserDefaults = UserDefaults.standard

    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleTextField.text = saveData.object(forKey: "title") as? String
        contentTextView.text = saveData.object(forKey: "title") as? String
        titleTextField.delegate = self
    }
    
        
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func saveMemo(){
        saveData.set(titleTextField.text,forKey: "title")
        saveData.set(contentTextView.text, forKey: "title")
    
      let alert: UIAlertController = UIAlertController(title: "保存", message:
      "メモの保存が完了しました",preferredStyle: .alert)
    
       alert.addAction(
             UIAlertAction(
               title: "OK",
               style: .default,
                handler: { action in
                    print("OKボタンが押されました")
                self.navigationController?.popViewController(animated: true)
    }
        )
        )
        present(alert,animated: true,completion: nil)
        
        func textFieldShouldReturn(_ textField: UITextField)-> Bool{
            textField.resignFirstResponder()
            return true
        }
            
        
    }
    
    
        
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */




}
