//
//  ViewController.h
//  cell的复用
//
//  Created by Eleven on 2023/6/4.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITableViewDelegate,UITableViewDataSource>

@property (nonatomic, strong) UITableView *tableView;

@end

