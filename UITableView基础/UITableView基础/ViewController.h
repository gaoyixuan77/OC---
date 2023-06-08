//
//  ViewController.h
//  UITableView基础
//
//  Created by Eleven on 2023/5/31.
//

#import <UIKit/UIKit.h>

//第一个协议：先要实现数据视图的普通协议，该协议负责数据视图的普通事件处理
//第二个协议：然后要实现数据视图的数据代理协议，负责处理数据视图的数据代理
@interface ViewController : UIViewController<UITableViewDelegate,UITableViewDataSource> {
    //定义一个数据视图对象
    //数据视图是用来显示大量相同格式的大量信息的视图
    //例如通讯录，微信好友、朋友圈等
    UITableView *_tableView;
}


@end

