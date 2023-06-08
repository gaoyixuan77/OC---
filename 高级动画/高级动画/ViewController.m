//
//  ViewController.m
//  高级动画
//
//  Created by Eleven on 2023/6/1.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //在使用高级动画之前，需要在程序最上面的文件中选择“build phases”这一选项，然后在Link开头的那一栏点左下的“+”来添加库
    
    //创建父亲视图
    _parentView = [[UIView alloc] init];
    _parentView.frame = CGRectMake(40, 80, 260, 380);
    [self.view addSubview: _parentView];
    _parentView.backgroundColor = [UIColor orangeColor];
    
    //创建图像视图
    _imageView1 = [[UIImageView alloc] initWithFrame: CGRectMake(0, 0, 260, 380)];
    _imageView1.image = [UIImage imageNamed: @"xmy1.jpg"];
    _imageView2 = [[UIImageView alloc] initWithFrame: CGRectMake(0, 0, 260, 380)];
    _imageView2.image = [UIImage imageNamed: @"xmy2.jpg"];
    
    [_parentView addSubview: _imageView1];
}



@end
