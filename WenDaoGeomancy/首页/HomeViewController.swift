//
//  HomeViewController.swift
//  WenDaoGeomancy
//
//  Created by 123 on 2018/1/25.
//  Copyright © 2018年 handsomeBoy. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor=UIColor.blue

        // Do any additional setup after loading the view.
    }

    @IBAction func pusBtn(_ sender: UIButton) {
        print("aaaaaa")
        //self.navigationController?.pushViewController(lecture, animated: true);
        self.navigationController?.pushViewController(DetailsLectureViewController(), animated: true)
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
