//
//  ViewController.m
//  UITableView高级协议
//
//  Created by Eleven on 2023/6/1.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _tableView = [[UITableView alloc] initWithFrame: self.view.bounds style: UITableViewStylePlain];
    
    //自动调整子视图的大小
    _tableView.autoresizingMask = UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleWidth;
    
    //设置代理
    _tableView.delegate = self;
    _tableView.dataSource = self;
    
    //数据视图头部视图的设定
    _tableView.tableHeaderView = nil;
    //数据视图尾部视图的设定
    _tableView.tableFooterView = nil;
    
    [self.view addSubview: _tableView];
    
    //初始化数据源数组
    _arrayData = [[NSMutableArray alloc] init];
    
    for (int i = 1; i < 20; i++) {
        NSString *str = [NSString stringWithFormat: @"A %d", i];
        
        [_arrayData addObject: str];
    }
    
    //当数据的数据源发生变化的时候
    //更新数据视图，重新加载数据
    [_tableView reloadData];
    
}

//返回行数
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _arrayData.count;
}

//返回组数，默认组数返回1
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    NSString *strID = @"ID";
    //尝试获取可以复用的单元格
    //如果得不到，返回nil
    UITableViewCell *cell = [_tableView dequeueReusableCellWithIdentifier: strID];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle: UITableViewCellStyleSubtitle reuseIdentifier: strID];
    }
    
    //单元格文字赋值
    cell.textLabel.text = [_arrayData objectAtIndex: indexPath.row];
    //设置文字子标题
    cell.detailTextLabel.text = @"子标题";
    
    //为单元格添加图片，即设置图标
    NSString *str = [NSString stringWithFormat: @"xmy%ld.jpg", indexPath.row % 8 + 1];
    UIImage *image = [UIImage imageNamed: str];
    UIImageView *iView = [[UIImageView alloc] initWithImage: image];
    cell.imageView.image = image;
    
    //调用创建功能按钮方法
    [self creatBtn];
    
    return cell;
}

- (void)creatBtn {
    _isEdit = NO;
    //设置导航栏按钮
    _btnEdit = [[UIBarButtonItem alloc] initWithTitle: @"编辑" style: UIBarButtonItemStylePlain target: self action: @selector(pressEdit)];
    _btnFinish = [[UIBarButtonItem alloc] initWithTitle: @"完成" style: UIBarButtonItemStylePlain target: self action: @selector(pressFinish)];
    _btnDelete = [[UIBarButtonItem alloc] initWithTitle: @"删除" style: UIBarButtonItemStylePlain target: self action: @selector(pressDelete)];
    
    self.navigationItem.rightBarButtonItem = _btnEdit;
}

- (void)pressEdit {
    //修改对象编辑状态
    _isEdit = YES;
    self.navigationItem.rightBarButtonItem = _btnFinish;
    //开启编辑状态
    [_tableView setEditing: YES];
    self.navigationItem.leftBarButtonItem = _btnDelete;
}

- (void)pressFinish {
    _isEdit = NO;
    self.navigationItem.rightBarButtonItem = _btnEdit;
    [_tableView setEditing: NO];
    self.navigationItem.leftBarButtonItem = nil;
}

//单元格显示效果协议
- (UITableViewCellEditingStyle)tableView:(UITableView *)tableView editingStyleForRowAtIndexPath:(NSIndexPath *)indexPath {
    //默认为删除状态
    return UITableViewCellEditingStyleDelete;
    
    //设置为添加状态
    //return UITableViewCellEditingStyleInsert;
    
    //设置为空状态
    //return UITableViewCellEditingStyleNone;
    
    //组合在一起就会表现多选状态
    //return UITableViewCellEditingStyleDelete|UITableViewCellEditingStyleInsert;
}

//当手指在单元格上移动时可以显示编辑状态
//这里通过手指滑动来实现删除按钮的功能
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    
    //删除数据源对应的数据
    [_arrayData removeObjectAtIndex: indexPath.row];
        
    //数据源更新
    [_tableView reloadData];
    
    NSLog(@"删除");
}

//选中单元格时执行
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    NSLog(@"选中单元格! %lu, %lu", indexPath.section, indexPath.row);
}

//这个函数可以使在已经选择单元格的情况下，再选择另一个单元格的时候取消选中上一个单元格，即使每次选择时只能选择一个
- (void)tableView:(UITableView *)tableView didDeselectRowAtIndexPath:(NSIndexPath *)indexPath {
    NSLog(@"取消选中单元格! %lu,%lu", indexPath.section, indexPath.row);
}

@end
