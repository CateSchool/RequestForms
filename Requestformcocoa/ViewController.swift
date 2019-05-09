//
//  ViewController.swift
//  Requestformcocoa
//
//  Created by keck on 4/25/19.
//  Copyright © 2019 Cate School. All rights reserved.
//

import UIKit
import SwiftSignatureView
class ViewController: UIViewController, SwiftSignatureViewDelegate,UIPickerViewDelegate,UIPickerViewDataSource {
   
    override public func viewDidLoad() {
        super.viewDidLoad()
        studentSignature.delegate = self
        studentSignature.isHidden = false
        dormPicker.delegate = self
        dormPicker.dataSource = self
        dormTextField.inputView = dormPicker
    }
    
    
 
   
   
    @IBOutlet weak var advisorSignature: SwiftSignatureView!
   
    
    @IBAction func advisorClear(_ sender: Any) {
        advisorSignature.clear()
    }
    @IBOutlet weak var coachSignature: SwiftSignatureView!
    @IBAction func coachClear(_ sender: Any) {
        coachSignature.clear()
    }
    @IBOutlet weak var studentSignature: SwiftSignatureView!
    @IBAction func studentClear(_ sender: Any) {
        studentSignature.clear()
    }
    
   
    
    public func swiftSignatureViewDidTapInside(_ view: SwiftSignatureView) {
        print("Did tap inside")
    }
    
    public func swiftSignatureViewDidPanInside(_ view: SwiftSignatureView) {
        print("Did pan inside")
    }
 
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var dormTextField: UITextField!
    @IBOutlet weak var gradeTextField: UITextField!
    @IBOutlet weak var departureTextField: UITextField!
    @IBOutlet weak var returnTextField: UITextField!
    @IBOutlet weak var transporterTextField: UITextField!
    @IBOutlet weak var hostTextField: UITextField!
    @IBOutlet weak var phoneTextField: UITextField!
    @IBOutlet weak var destinationTextField: UITextField!
    @IBOutlet weak var studentsTextField: UITextField!
    
    //dormPicker Code
        var dorms = ["25 House", "Bothin", "CHE", "CHW", "Day", "High House / Lido" , "Long House" , "Parsonage", "Schoolhouse"]
        var dormPicker = UIPickerView()
    
        func numberOfComponents(in pickerView: UIPickerView) -> Int {
            return 1
        }
    
        func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
            return dorms.count
        }
    
        func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
            dormTextField.text = dorms[row]
        }
        func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
            return dorms[row]
        }
    //gradePicker Code
}
//Function to make return key shift to next UIPicker
extension ViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        switch textField {
        case nameTextField:
            dormTextField.becomeFirstResponder()
        case dormTextField:
            gradeTextField.becomeFirstResponder()
        case gradeTextField:
            departureTextField.becomeFirstResponder()
        case departureTextField:
            returnTextField.becomeFirstResponder()
        case returnTextField:
            transporterTextField.becomeFirstResponder()
        case transporterTextField:
            hostTextField.becomeFirstResponder()
        case hostTextField:
            phoneTextField.becomeFirstResponder()
        case phoneTextField:
            destinationTextField.becomeFirstResponder()
        case destinationTextField:
            studentsTextField.becomeFirstResponder()
        default:
            studentsTextField.resignFirstResponder()
    }
        return true
}
    
    
    
}
