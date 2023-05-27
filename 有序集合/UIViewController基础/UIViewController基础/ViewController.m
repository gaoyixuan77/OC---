//
//  ViewController.m
//  UIViewController基础
//
//  Created by Eleven on 2023/5/21.
//

#import "ViewController.h"
#import "ViewC02.h"

@interface ViewController ()

@end

@implementation ViewController

//当屏幕被点击的时候，调用此函数
- (void) touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    //创建视图控制器二
    ViewC02 *v2 = [[ViewC02 alloc] init];
    
    //显示一个新的视图控制器界面到屏幕上
    //该函数会传入三个参数：第一个参数指新的控制器对象
    //第二个参数指是否使用动画切换效果
    //第三个参数指切换结束后是否调用block块操作，不需要为nil
    [self presentViewController: v2 animated: YES completion: nil];
}

//当视图控制器第一次被加载显示视图的时，调用此函数
//布局初始化视图来使用，初始化资源使用
- (void)viewDidLoad {
    //调用父类的加载视图函数
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor blueColor];
    NSLog(@"viewDidLoad第一次加载视图");

    
    UIView *view = [[UIView alloc] init];

    view.frame = CGRectMake(100, 100, 100, 200);

    //将视图添加到当前控制视图上
    [self.view addSubview: view];

    view.backgroundColor = [UIColor orangeColor];

    self.view.backgroundColor = [UIColor blueColor];
}

//当视图控制器的视图即将显示的时候，调用此函数
//参数：表示是否用动画切换后消失
//每一次视图显示时都要被调用
- (void) viewWillAppear:(BOOL)animated {
    NSLog(@"视图即将显示");
}

//当视图控制器的视图即将消失的时候，调用此函数
//参数：表示是否用动画切换后消失
//当前状态：视图还是显示在屏幕上的
- (void) viewWillDisappear:(BOOL)animated {
    NSLog(@"视图即将消失");
}

//当视图控制器的视图已经显示到后的瞬间，调用此函数
//参数：表示是否用动画切换显示的
//当前状态：视图已经显示在屏幕上
- (void) viewDidAppear:(BOOL)animated {
    NSLog(@"视图已显示");
}

//当视图控制器的视图已经从屏幕上消失，调用此函数
//参数：表示是否用动画切换显示
//当前状态：视图已经从屏幕上消失
- (void) viewDidDisappear:(BOOL)animated {
    NSLog(@"视图已消失");
}

@end
