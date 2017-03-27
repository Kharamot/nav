//
//  ViewController.swift
//  nav
//
//  Created by Kameron Haramoto on 2/2/17.
//  Copyright © 2017 Kameron Haramoto. All rights reserved.
//

import UIKit

class MyInt {
    var x: Int = 0
}

class ViewController: UIViewController {

    var myInt1 = MyInt()
    
    override func viewDidAppear(_ animated: Bool) {
        print("1st: myInt1 = \(myInt1.x)")
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "fromOneToTwo")
        {
            let vc = segue.destination as! SecondViewController
            vc.myInt2 = myInt1
        }
    }
}

