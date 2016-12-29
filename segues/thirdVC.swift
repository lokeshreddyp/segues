//
//  thirdVC.swift
//  segues
//
//  Created by lokeshreddy on 12/29/16.
//  Copyright © 2016 lokeshreddy. All rights reserved.
//

import UIKit

class thirdVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
//titleLBL.text = _songTitle
        
        // Do any additional setup after loading the view.
    }

    override func viewDidAppear(_ animated: Bool) {
        
        for x in 0..<_test.count {
        titleLBL.text = _test[0]
        nameLBL.text = _test[1]
        }
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var titleLBL: UILabel!
    
    
    @IBOutlet weak var nameLBL: UILabel!
    private var _name :String!
    
    private var _test:Array<String>!
    
    
    
    var test:[String] {
        get {
            return _test
        }
        set {
            _test  = newValue
        }
    }
    
    
//    
//    private var _songTitle:String!
//    
//    var songTitle:String {
//        get {
//            return _songTitle
//        }
//        set {
//            _songTitle = newValue
//        }
//    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
