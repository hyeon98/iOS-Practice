//
//  ViewController.swift
//  Tab Bar Contoroller
//
//  Created by 정현석 on 2022/02/23.
//

import UIKit

class ViewController: UIViewController {

    lazy var segLabel: UILabel = {
        let lb: UILabel = UILabel()
        lb.text = "test1"
        lb.translatesAutoresizingMaskIntoConstraints = false

        return lb
    }()

    let array: [String] = ["Red", "Blue", "Green"]
    lazy var segCon: UISegmentedControl = {
        let sc: UISegmentedControl = UISegmentedControl(items: array)
        sc.selectedSegmentIndex = 0
        sc.translatesAutoresizingMaskIntoConstraints = false

        sc.addTarget(self, action: #selector(onClickSeg(segcon:)), for: .valueChanged)

        return sc
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // Modify SceneDelegate.swift
        // add TabBarController.swift
        // Modify ViewController.swift
        // add SecondViewController.swift

        view.addSubview(segLabel)

        let safeArea = view.safeAreaLayoutGuide
        segLabel.leadingAnchor.constraint(equalTo: safeArea.leadingAnchor, constant: 16).isActive = true
        segLabel.topAnchor.constraint(equalTo: safeArea.topAnchor, constant: 50).isActive = true
        

        view.addSubview(self.segCon)
        
        segCon.leadingAnchor.constraint(equalTo: safeArea.leadingAnchor, constant: 0).isActive = true
        segCon.topAnchor.constraint(equalTo: safeArea.topAnchor, constant: 0).isActive = true

    }

    @objc internal func onClickSeg(segcon: UISegmentedControl) {
        switch segcon.selectedSegmentIndex {
            case 0:
            segLabel.text = "test3"

            case 1:
            segLabel.text = "test2"

            case 2:
            segLabel.text = "test1"

            default:
            return

        }
    }
}

