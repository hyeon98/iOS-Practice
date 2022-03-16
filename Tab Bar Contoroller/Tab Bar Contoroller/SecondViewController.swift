//
//  SecondViewController.swift
//  Tab Bar Contoroller
//
//  Created by 정현석 on 2022/02/23.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.

        let testLabel = UILabel()
        testLabel.text = "test2"
        testLabel.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(testLabel)

        let safeArea = view.safeAreaLayoutGuide
        testLabel.leadingAnchor.constraint(equalTo: safeArea.leadingAnchor, constant: 16).isActive = true
        testLabel.topAnchor.constraint(equalTo: safeArea.topAnchor, constant: 16).isActive = true
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
