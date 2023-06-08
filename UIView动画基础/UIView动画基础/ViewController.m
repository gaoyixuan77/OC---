//
//  ViewController.m
//  UIView动画基础
//
//  Created by Eleven on 2023/6/1.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //创建图像视图
    _imageView = [[UIImageView alloc] init];
    _imageView.frame = CGRectMake(100, 100, 130, 130);
    _imageView.image = [UIImage imageNamed: @"xmy5.jpg"];
    
    [self.view addSubview: _imageView];
    
    //创建移动按钮
    UIButton *btnMove = [UIButton buttonWithType: UIButtonTypeRoundedRect];
    btnMove.frame = CGRectMake(120, 360, 80, 40);
    [btnMove setTitle: @"移动" forState: UIControlStateNormal];
    //添加移动事件按钮
    [btnMove addTarget: self action: @selector(pressMove) forControlEvents: UIControlEventTouchUpInside];
    [self.view addSubview: btnMove];
    
    //添加圆角按钮
    UIButton *btnScale = [UIButton buttonWithType: UIButtonTypeRoundedRect];
    btnScale.frame = CGRectMake(120, 400, 80, 40);
    [btnScale setTitle: @"缩放" forState: UIControlStateNormal];
    [btnScale addTarget: self action: @selector(pressScale) forControlEvents: UIControlEventTouchUpInside];
    [self.view addSubview: btnScale];
}


- (void)pressMove {
    //设置动画的执行时间和执行动作
    [UIView animateWithDuration: 3 animations: ^ {
        self->_imageView.frame = CGRectMake(50, 700, 130, 130);
    }];
    
    //设置动画开始的延时时间长度
    //进行延时动画的处理
    //options有几个属性：UIViewAnimationOptionRepeat表示动画重复执行；UIViewAnimationOptionAutoreverse表示动画结束后再逆执行动画
    [UIView animateWithDuration: 3 delay: 4 options: UIViewAnimationOptionCurveLinear animations: ^{
        self->_imageView.frame = CGRectMake(50, 700, 130, 130);
    } completion:^(BOOL finished) {
    }];
    
    
}

- (void)pressScale {
    
}

@end
