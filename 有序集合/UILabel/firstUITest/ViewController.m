//
//  ViewController.m
//  firstUITest
//
//  Created by Eleven on 2023/5/20.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

//创建UI控件函数
- (void) creatUI {
    UILabel *label = [[UILabel alloc] init];
    
    //显示文字的赋值
    label.text = @"喜多川海梦你带我肘吧喜多川海梦没有你我怎么活啊————";
    
    //设定label的显示位置
    label.frame = CGRectMake(10, 400, 410, 200);
    
    //设定label的背景颜色
    label.backgroundColor = [UIColor yellowColor];
    
    //设定整个屏幕的背景颜色
    self.view.backgroundColor = [UIColor redColor];
    
    //将label显示到屏幕上
    [self.view addSubview: label];
    
    //设置label的文字的大小和字体，此处使用的是系统默认字体，大小是34
    label.font = [UIFont systemFontOfSize: 34];

    //设置label的文字的颜色
    label.textColor = [UIColor blueColor];
    
    //label的高级属性----------------

    //设定label的文字的阴影颜色
    label.shadowColor = [UIColor greenColor];
    //设置阴影的偏移位置
    label.shadowOffset = CGSizeMake(10, 10);
    
    //设置text文字的对齐方式，默认为靠左对齐，当前设置的是居中对齐
    label.textAlignment = NSTextAlignmentCenter;
    
    //显示label中文字显示的行数，默认值为1，其他的>0的行数，文字会尽量按照设定的行数显示
    //如果值为0，iOS会自动计算所需要的行数，按需要的行数显示文字
    label.numberOfLines = 3;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self creatUI];//调用创建UI函数
}


@end
