//
//  ViewController.m
//  UIView的层级关系
//
//  Created by Eleven on 2023/5/20.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //首先创建三个视图
    UIView *view1 = [[UIView alloc] init];
    UIView *view2 = [[UIView alloc] init];
    UIView *view3 = [[UIView alloc] init];
    
    view1.frame = CGRectMake(100, 100, 100, 100);
    view2.frame = CGRectMake(125, 125, 125, 125);
    view3.frame = CGRectMake(150, 150, 150, 150);
    
    view1.backgroundColor = [UIColor redColor];
    view2.backgroundColor = [UIColor greenColor];
    view3.backgroundColor = [UIColor blueColor];
    
    
    //当view1、view2、view3的添加顺序不同的时候，视图的覆盖顺序也是不同的
    //即哪一个视图先被添加，就先绘制谁
    //在此处更改添加顺序，得到的图形覆盖关系是不同的
    [self.view addSubview: view1];
    [self.view addSubview: view2];
    [self.view addSubview: view3];
    
    //subviews是管理所有self.view的子视图的数组
    UIView *viewFront = self.view.subviews[2];
    UIView *viewBack = self.view.subviews[0];
    if (viewBack == view1) {
        NSLog(@"1相等");
    }
    //将某个视图从该数组中清除掉
    [view2 removeFromSuperview];
    
    
    //使用方法来调整视图覆盖关系
    //将某个视图调整到最前面显示
    [self.view bringSubviewToFront: view1];
    //将某个视图调整到最后面
    [self.view sendSubviewToBack: view3];
}


@end
