//
//  ViewController.h
//  自定义cell和cell的复用
//
//  Created by Eleven on 2023/6/7.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong) UITableView *tableView;


@end

