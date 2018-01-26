//
//  TabBarViewController.swift
//  WenDaoGeomancy
//
//  Created by 123 on 2018/1/26.
//  Copyright © 2018年 handsomeBoy. All rights reserved.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        CreatTabBar()

        // Do any additional setup after loading the view.
    }
    //创建tabBar
    func CreatTabBar()  {
        
        
        let  home  = HomeViewController()
        home.title = "首页"
        let navHome = UINavigationController(rootViewController:home)
        navHome.tabBarItem.title = "首页"
        navHome.tabBarItem.image = UIImage(named:"main")
        navHome.tabBarItem.selectedImage = UIImage(named:"main_blue")
        
        let  shuoDao  = ShuoDaoViewController()
        shuoDao.title = "分类"
        let navShuoDao = UINavigationController(rootViewController:shuoDao)
        navShuoDao.tabBarItem.title = "分类"
        navShuoDao.tabBarItem.image = UIImage(named:"grid")
        navShuoDao.tabBarItem.selectedImage = UIImage(named:"grid_blue")
        
        let  message  = MessageViewController()
        message.title = "消息"
        let navMessage = UINavigationController(rootViewController:message)
        navMessage.tabBarItem.title = "消息"
        navMessage.tabBarItem.image = UIImage(named:"grid")
        navMessage.tabBarItem.selectedImage = UIImage(named:"grid_blue")
        
        let  MyView  = MyViewController()
        MyView.title = "我的"
        let navMyView = UINavigationController(rootViewController:MyView)
        navMyView.tabBarItem.title = "我的"
        navMyView.tabBarItem.image = UIImage(named:"grid")
        navMyView.tabBarItem.selectedImage = UIImage(named:"grid_blue")
        
        self.viewControllers = [navHome, navShuoDao,navMessage,navMyView]
        

        //tabBar 底部工具栏背景颜色 (以下两个都行)
        //self.tabBar.barTintColor = UIColor.red
        // 属性设置
        // 设置默认被选中视图控制器
        self.selectedIndex = 0;
        // 设置切换视图 tabBar 属性
        // 1 打开用户交互
        self.tabBar.isUserInteractionEnabled = true;
        // 2 设置背景颜色
        self.tabBar.backgroundColor = UIColor.white
        // 3 设置背景图片
        self.tabBar.backgroundImage = UIImage(named: "")
        // 4 选中时的背景图片
        self.tabBar.selectionIndicatorImage = UIImage(named: "")
     
        //self.tabBar.tintColor = UIColor.colo
        
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
