//
//  ViewController.m
//  UITableView基础
//
//  Created by Eleven on 2023/5/31.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //创建数据视图，传入两个参数
    //第一个参数是数据视图的位置
    //第二个参数是数据视图的风格——UITableViewStylePlain:普通风格； UITableViewStyleGrouped：分组风格
    _tableView = [[UITableView alloc] initWithFrame: self.view.bounds style: UITableViewStyleGrouped];
    
    //设置数据视图的代理对象
    _tableView.delegate = self;
    //设置数据视图的代理源对象
    _tableView.dataSource = self;
    
    [self.view addSubview: _tableView];
}

//这个是必须要实现的协议函数，程序在显示数据视图的时候会调用此函数
//它的作用是获取每组元素的个数（行数）
//它的返回值表示每组元素的个数
//传入两个参数，第一个参数是数据视图对象本身；第二个参数是：那一组需要的行数
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 5;
}

//设置数据视图的组数
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 3;
}

//创建单元格对象函数，传入两个参数
//第一个参数是传入这个函数的对象，第二个参数是单元格的索引，即我们上面写的行数和组数
- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    NSString *cellStr = @"cell";
    
    UITableViewCell *cell = [_tableView dequeueReusableCellWithIdentifier: cellStr];
    
    if (cell == nil) {
        //创建一个单元格对象，传入两个参数
        //第一个参数是单元格的样式，第二个参数是指单元格的复用标记
        cell = [[UITableViewCell alloc] initWithStyle: UITableViewCellStyleDefault reuseIdentifier: cellStr];
    }
    //indexPath.section表示创建的单元格的组数，indexPath.row表示创建的单元格的行数；
    //每创建一个单元格，都要调用一次上面的cellForRowAtIndexPath函数
    NSString *str = [NSString stringWithFormat: @"第%ld组，第%ld行", indexPath.section, indexPath.row];
    
    //将单元格的主文字内容赋值
    cell.textLabel.text = str;
    return cell;
}



@end
