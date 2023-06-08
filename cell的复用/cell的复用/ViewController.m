//
//  ViewController.m
//  cell的复用
//
//  Created by Eleven on 2023/6/4.
//

#import "ViewController.h"
#import "MyTableViewCell.h"
#import "ViewController.h"

@interface ViewController ()

@end
static NSString *str = @"ID";
@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    _tableView = [[UITableView alloc] initWithFrame: self.view.bounds style: UITableViewStyleGrouped];
    _tableView.delegate = self;
    _tableView.dataSource = self;
//    NSString *str = @"1";
    [_tableView registerClass: [MyTableViewCell class] forCellReuseIdentifier: @"1"];
    _tableView.backgroundColor = [UIColor blueColor];
    [self.view addSubview: _tableView];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 3;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 3;
}

//手动（非注册）
//- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
//    static NSString *strID = @"id";
//    UITableViewCell *cell = [_tabView dequeueReusableCellWithIdentifier: strID];
//    if (cell == nil) {
//        cell = [[UITableViewCell alloc] initWithStyle: UITableViewCellStyleSubtitle reuseIdentifier: strID];
//    }
//    cell.textLabel.text = @"aaa";
//    return cell;
//}

//自动（注册）
- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    MyTableViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier: @"1"];
    cell.backgroundColor = [UIColor redColor];
    return cell;
}


@end

