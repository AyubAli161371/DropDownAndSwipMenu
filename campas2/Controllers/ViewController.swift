//
//  ViewController.swift
//  campas2
//
//  Created by Ayub Ali on 25/02/2022.
//

import UIKit
import iOSDropDown

class ViewController: UIViewController {

    @IBOutlet weak var dropDown: DropDown!
    @IBOutlet weak var onClickedDetail: UIButton!
    @IBOutlet weak var onClickedBooking: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dropDownMenu()
        
    }
    func dropDownMenu(){
        dropDown.optionArray = ["Karachi", "Lahore", "Faisalabad","Rawalpindi", "Gujranwala", "Peshawar","Multan", "Islamabad", "Hyderabad","Quetta", "Bahawalpur", "Sargodha","Sialkot", "Sukkur"]
        //Its Id Values and its optional
        dropDown.optionIds = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15]


        dropDown.didSelect{(selectedText , index ,id) in
        self.dropDown.text = "Selected String: \(selectedText) \n index: \(index)"
        }
    }
    
    
    @IBAction func BtnDetail(_ sender: Any) {
        
    }
    
    @IBAction func BtnBooking(_ sender: Any) {
    }
}

