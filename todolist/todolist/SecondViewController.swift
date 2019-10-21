//
//  SecondViewController.swift
//  todolist
//
//  Created by Nurzhan Ababakirov on 10/10/19.
//  Copyright © 2019 Nurzhan Ababakirov. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    

    @IBOutlet weak var input: UITextField!
 
    @IBOutlet weak var inputS: UITextField!
    @IBAction func addTask(_ sender: UIButton) {
        if(input.text != "" && inputS.text != ""){
            list.append(input.text!)
            input.text =  ""
            sList.append(inputS.text!)
            inputS.text = ""
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

