//
//  ViewController.m
//  UITableView协议
//
//  Created by Eleven on 2023/5/31.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //创建数据视图对象
    _tableView = [[UITableView alloc] initWithFrame: CGRectMake(0, 40, 394, 852) style: UITableViewStyleGrouped];
    
    //设置代理对象
    _tableView.delegate = self;
    //设置数据视图代理对象
    _tableView.dataSource = self;
    
    [self.view addSubview: _tableView];
    
    //创建一个可变数组
    _arrayData = [[NSMutableArray alloc] init];
    
    for (int i = 'A'; i < 'Z'; i++) {
        //定义小数组
        NSMutableArray *arraySmall = [[NSMutableArray alloc] init];
        
        for (int j = 1; j <= 5; j++) {
            NSString *str = [NSString stringWithFormat: @"%c%d", i, j];
            [arraySmall addObject: str];
        }
        
        //这里就相当于生成一个二维数组
        [_arrayData addObject: arraySmall];
    }
}

//获取组数
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return _arrayData.count;
}

//获取每组的元素个数
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    //因为前面创建了一个二维数组，这里的section返回的是_arrayData二维数组中的以行为元素的一维数组，然后再对用其count方法取这个一维数组的元素个数
    NSInteger numRow = [[_arrayData objectAtIndex:section] count];
    return numRow;
}

//获取单元格
- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    NSString *str = @"cell";
    
    UITableViewCell *cell = [_tableView dequeueReusableCellWithIdentifier: str];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle: UITableViewCellStyleDefault reuseIdentifier: str];
    }
    cell.textLabel.text = _arrayData[indexPath.section][indexPath.row];
    return cell;
    
}

//以下是几个协议函数------------------------------------------------------------------------------------------------------------------------------------
//获取单元格的高度
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 100;
}

//获取显示在每组头部的标题
- (NSString*)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    return @"头部标题";
}

//获取显示在每组尾部的标题
- (NSString*)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section {
    return @"尾部标题";
}

//获取头部高度
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    return 40;
}

//获取尾部高度
- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section {
    return 20;
}

@end
