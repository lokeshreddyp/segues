//
//  playSongVCViewController.swift
//  segues
//
//  Created by lokeshreddy on 12/29/16.
//  Copyright © 2016 lokeshreddy. All rights reserved.
//

import UIKit

class playSongVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.black
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var nameTF: UITextField!
    
    
    @IBAction func loadThirdScreenpressed(_ sender: Any) {
        let Name:String = nameTF.text!
        let song = "Backstreet_boys!"
        
        let test:[String] = [Name,song]
       //  performSegue(withIdentifier: "thirdVC", sender: song)
        performSegue(withIdentifier: "thirdVC", sender: test)

        
    }
   
    @IBAction func backBTNpressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let destination1 = segue.destination as? thirdVC {
            if let namensong = sender as? Array<String> {
                destination1.test = namensong
            }
        }
//        
//      if  let destination = segue.destination as? thirdVC
//            {
//                if let song = sender as? String {
//        destination.songTitle = song
//                }
//        }
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }


}
