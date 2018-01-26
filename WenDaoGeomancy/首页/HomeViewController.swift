//
//  HomeViewController.swift
//  WenDaoGeomancy
//
//  Created by 123 on 2018/1/25.
//  Copyright © 2018年 handsomeBoy. All rights reserved.
//

import UIKit
import SnapKit
class HomeViewController: UIViewController,UITableViewDelegate,UITableViewDataSource,UIScrollViewDelegate {
    
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
        tableView.snp.makeConstraints { (mark) in
            mark.left.equalTo(self.view)
            mark.top.equalTo(-20)
            mark.top.lessThanOrEqualTo(self.view.snp.top)
            mark.right.equalTo(self.view)
            mark.bottom.equalTo(self.view)
        }

        // 测试网络返回情况可以用这个地址 http://httpbin.org
        let dic = ["name":"why", "age":18] as [String : Any]
        
        SLRequest.shareInstance.request(methodType: .GET, urlString: "http://www.baidu.com", parameters: dic) { (result, error) in
            if error != nil {
                print(error!)
                return
            }
            
            print(result!)
        }

        // Do any additional setup after loading the view.
    }
    public func scrollViewDidScroll(_ scrollView: UIScrollView){
        if scrollView.contentOffset.y <= -20 {
            self.navigationController?.isNavigationBarHidden=true
        }else{
            self.navigationController?.isNavigationBarHidden=false
        }
        //print(scrollView.contentOffset.y)
    }

    //MARK: - 懒加载数据
    lazy var dataList:[String] = {
        return ["iOScoderZZJ","iOS小菜鸡","终成雄鹰","旅途很远","还需修行"]
    }()
    
    //MARK: 行数
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 50
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
        cell?.textLabel?.text = "aaaaaaaa"

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
