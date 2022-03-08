//
//  ViewController.swift
//  radio button
//
//  Created by 정현석 on 2022/03/02.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let button = UIButton()
        // button.setTitle("O", for: .normal)
        button.setImage(UIImage(systemName: "bubble.left"), for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .darkGray
        // button.frame = CGRect(x: 0, y: 0, width: 200, height: 200)
        self.view.addSubview(button)

        button.translatesAutoresizingMaskIntoConstraints = false

        button.topAnchor.constraint(equalTo: view.topAnchor, constant: 100).isActive = true
        button.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 40).isActive = true
        button.heightAnchor.constraint(equalToConstant: 40).isActive = true
        button.widthAnchor.constraint(equalToConstant: 40).isActive = true

        button.addTarget(self, action: #selector(onClickButton(_:)), for: .touchUpInside)


        
        let label = UILabel()
        label.text = "This is My Label"
        label.backgroundColor = .white
        
        self.view.addSubview(label)
        
        label.translatesAutoresizingMaskIntoConstraints = false

        label.leftAnchor.constraint(equalTo: button.rightAnchor, constant: 10).isActive = true
        label.centerYAnchor.constraint(equalTo:button.centerYAnchor).isActive = true 
    }

    @objc internal func onClickButton(_ sender: Any) {
        if sender is UIButton {
            print("_hyeon button")
        }
    }
}

