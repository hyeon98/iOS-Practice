//
//  TabBarController.swift
//  Tab Bar Contoroller
//
//  Created by 정현석 on 2022/02/23.
//

import UIKit

class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.

        self.tabBar.tintColor = .red
        self.tabBar.unselectedItemTintColor = .blue
        
        let firstVC = UINavigationController(rootViewController: ViewController())
        firstVC.view.backgroundColor = .white
        firstVC.tabBarItem.selectedImage = UIImage(systemName: "message")
        firstVC.tabBarItem.title = "Recent"
        firstVC.tabBarItem.image = UIImage(systemName: "message.fill")
        
        let dummyView = UINavigationController(rootViewController: SecondViewController())
        // let dummyView = UIViewController()
        dummyView.view.backgroundColor = .yellow
        dummyView.tabBarItem.title = "Yellow Dummy"
        dummyView.tabBarItem.image = UIImage(systemName: "trash.fill")
        
        viewControllers = [firstVC, dummyView]
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
