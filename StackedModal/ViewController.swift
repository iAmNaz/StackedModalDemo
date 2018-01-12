//
//  ViewController.swift
//  StackedModal
//
//  Created by Nazario Mariano on 11/01/2018.
//  Copyright © 2018 Nazario Mariano. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var firstModalVC: FirstModalViewController!
    var secondModalVC: SecondModalViewController!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        firstModalVC = storyboard.instantiateViewController(withIdentifier: "FirstModalViewController") as! FirstModalViewController
        firstModalVC.rootVC = self
        firstModalVC.modalPresentationStyle = UIModalPresentationStyle.currentContext
        secondModalVC = storyboard.instantiateViewController(withIdentifier: "SecondModalViewController") as! SecondModalViewController
        secondModalVC.modalPresentationStyle = UIModalPresentationStyle.currentContext
    }

    @IBAction func openModalAction(_ sender: Any) {
        present(firstModalVC, animated: true, completion: nil)
    }
    
    func closeFirstModal() {
        firstModalVC.dismiss(animated: false) {
            self.present(self.secondModalVC, animated: true, completion: {
                
            })
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


class FirstModalViewController: UIViewController {
    
    var rootVC: ViewController!
    
    @IBAction func openSecondModalAction(_ sender: Any) {
        rootVC.closeFirstModal()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

class SecondModalViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
