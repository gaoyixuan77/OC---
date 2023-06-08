//
//  ViewController.h
//  UITableView协议
//
//  Created by Eleven on 2023/5/31.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITableViewDelegate,UITableViewDataSource> {
    //定义数据视图对象
    UITableView *_tableView;
    
    //声明一个数据源
    NSMutableArray *_arrayData;
}


@end

