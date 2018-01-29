//
//  SLRequest.swift
//  WenDaoGeomancy
//
//  Created by 123 on 2018/1/26.
//  Copyright © 2018年 handsomeBoy. All rights reserved.
//

import UIKit
import AFNetworking
// 定义枚举类型
// 可以使用String类型也可以用Int
enum RequestType : String {
    case GET = "GET"
    case POST = "POST"
}
class SLRequest: AFHTTPSessionManager {

    //let 是线程安全的,创建单例
    static let shareInstance: SLRequest = {
        let tools = SLRequest()
        tools.responseSerializer.acceptableContentTypes?.insert("text/plain")
        return tools
    }()
}

// MARK:- 封装请求方法
extension SLRequest {
    func request(methodType: RequestType, urlString: String, parameters: [String : Any], finshed: @escaping (_ reslut: Any?, _ error: Error?) -> ()) {
        
        // 1.定义成功的闭包
        let successCallBack = { (task: URLSessionDataTask, result: Any?) in
            finshed(result, nil)
        }
        
        // 2.定义失败的闭包
        let failureCallBack = { (task:URLSessionDataTask?, error: Error) in
            finshed(nil, error)
        }
        
        // 3.发送网络请求
        if methodType == .GET {
            get(urlString, parameters: parameters, progress: nil, success:successCallBack, failure: failureCallBack)
        } else {
            post(urlString, parameters: parameters, progress: nil, success:successCallBack,failure: failureCallBack)
        }
    }
}

