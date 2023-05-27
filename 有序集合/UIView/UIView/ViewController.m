//
//  ViewController.m
//  UIView
//
//  Created by Eleven on 2023/5/20.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //创建一个UIView对象
    UIView *view = [[UIView alloc] init];
    
    //设置UIView的位置
    view.frame = CGRectMake(150, 300, 100, 80);
    
    //设置UIView的颜色
    view.backgroundColor = [UIColor orangeColor];
    
    //是否隐藏视图对象
    //YES：隐藏；  NO：不隐藏
    view.hidden = NO;
    
    //设置是否显示不透明
    view.opaque = NO;
    
    //设置视图对象的透明度
    //alpha == 1,不透明；
    //alpha == 0，透明；
    //alpha == 0.5，半透明；
    //在0～1内各个小数都能取，小数的大小决定了透明度
    view.alpha = 0.7;
    
    //将自己从父亲视图删除掉
    [view removeFromSuperview];
    
    [self.view addSubview: view];
}


@end
