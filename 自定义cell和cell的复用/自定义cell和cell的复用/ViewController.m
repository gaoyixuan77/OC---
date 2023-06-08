//
//  ViewController.m
//  自定义cell和cell的复用
//
//  Created by Eleven on 2023/6/7.
//

#import "ViewController.h"
#import "MyTableViewCell.h"

@interface ViewController ()

@end

static NSString *str = @"id";
@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tableView = [[UITableView alloc] init];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    self.tableView.backgroundColor = [UIColor grayColor];
    [_tableView registerClass:[MyTableViewCell class] forCellReuseIdentifier:str];
    [self.view addSubview:_tableView];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 3;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 3;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 100;
}

- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    MyTableViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier:str];
    
    return cell;
}



@end
