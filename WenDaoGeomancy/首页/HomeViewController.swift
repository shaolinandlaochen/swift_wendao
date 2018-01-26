//
//  HomeViewController.swift
//  WenDaoGeomancy
//
//  Created by 123 on 2018/1/25.
//  Copyright © 2018年 handsomeBoy. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    @IBOutlet var tableView: UITableView!
    
    override func viewWillAppear(_ animated: Bool) {
        super .viewWillAppear(true)
        self.navigationController?.isNavigationBarHidden=true
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor=UIColor.white
        tableView.delegate=self
        tableView.dataSource=self


        // Do any additional setup after loading the view.
    }

    //MARK: - 懒加载数据
    lazy var dataList:[String] = {
        return ["iOScoderZZJ","iOS小菜鸡","终成雄鹰","旅途很远","还需修行"]
    }()
    
    //MARK: 行数
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataList.count
    }
    //MARK: 点击cell执行
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView .deselectRow(at: indexPath, animated: true)
        print("点击cell执行")
    }
    //加载cell
    internal func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        if cell == nil{
            cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "cell")
            
        }
        cell?.textLabel?.text = dataList[indexPath.row]

        return cell!
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
