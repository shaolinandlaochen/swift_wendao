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
        navHome.tabBarItem.image = UIImage(named:"icon_index_wendao_nor")
        navHome.tabBarItem.selectedImage = UIImage(named:"icon_index_wendao_sel")
        
        let  shuoDao  = ShuoDaoViewController()
        shuoDao.title = "说道"
        let navShuoDao = UINavigationController(rootViewController:shuoDao)
        navShuoDao.tabBarItem.title = "说道"
        navShuoDao.tabBarItem.image = UIImage(named:"icon_index_fengshui_nor")
        navShuoDao.tabBarItem.selectedImage = UIImage(named:"icon_index_fengshui_sel")
        
        let  message  = MessageViewController()
        message.title = "消息"
        let navMessage = UINavigationController(rootViewController:message)
        navMessage.tabBarItem.title = "消息"
        navMessage.tabBarItem.image = UIImage(named:"icon_index_news_nor")
        navMessage.tabBarItem.selectedImage = UIImage(named:"icon_index_news_sel")
        
        let  MyView  = MyViewController()
        MyView.title = "我的"
        let navMyView = UINavigationController(rootViewController:MyView)
        navMyView.tabBarItem.title = "我的"
        navMyView.tabBarItem.image = UIImage(named:"icon_index_mine_nor")
        navMyView.tabBarItem.selectedImage = UIImage(named:"icon_index_mine_sel")
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
        // 5 设置tabbar字体颜色
        self.tabBar.tintColor = withHex(hexString: "d9a700", alpha: 1)
        // 设置选中按钮的颜色
        self.tabBar.unselectedItemTintColor=withHex(hexString: "000000", alpha: 1)
        // 6 改变字体大小
        navHome.tabBarItem.setTitleTextAttributes([NSAttributedStringKey.font : UIFont.systemFont(ofSize: 12)], for: .normal)
        navShuoDao.tabBarItem.setTitleTextAttributes([NSAttributedStringKey.font : UIFont.systemFont(ofSize: 12)], for: .normal)
        navMessage.tabBarItem.setTitleTextAttributes([NSAttributedStringKey.font : UIFont.systemFont(ofSize: 12)], for: .normal)
        navMyView.tabBarItem.setTitleTextAttributes([NSAttributedStringKey.font : UIFont.systemFont(ofSize: 12)], for: .normal)
        
    }
    func withHex(hexString hex: String, alpha:CGFloat = 1) -> UIColor {
        // 去除空格等
        var cString: String = hex.trimmingCharacters(in: NSCharacterSet.whitespacesAndNewlines).uppercased()
        // 去除#
        if (cString.hasPrefix("#")) {
            cString = (cString as NSString).substring(from: 1)
        }
        // 红色的色值
        let rString = (cString as NSString).substring(to: 2)
        let gString = ((cString as NSString).substring(from: 2) as NSString).substring(to: 2)
        let bString = ((cString as NSString).substring(from: 4) as NSString).substring(to: 2)
        // 字符串转换
        var r:CUnsignedInt = 0, g:CUnsignedInt = 0, b:CUnsignedInt = 0
        Scanner(string: rString).scanHexInt32(&r)
        Scanner(string: gString).scanHexInt32(&g)
        Scanner(string: bString).scanHexInt32(&b)
        
        return UIColor(red: CGFloat(r) / 255.0, green: CGFloat(g) / 255.0, blue: CGFloat(b) / 255.0, alpha: alpha)
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
