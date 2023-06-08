//
//  ViewController.h
//  UITableView高级协议
//
//  Created by Eleven on 2023/6/1.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITableViewDelegate,UITableViewDataSource> {
    UITableView *_tableView;
    //数据源
    NSMutableArray *_arrayData;
    
    //添加导航按钮
    UIBarButtonItem *_btnEdit;
    UIBarButtonItem *_btnFinish;
    UIBarButtonItem *_btnDelete;
    //设置编辑状态
    BOOL _isEdit;
}


@end

