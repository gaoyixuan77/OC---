//
//  FirstViewController.m
//  导航控制器动画
//
//  Created by Eleven on 2023/6/1.
//

#import "FirstViewController.h"
#import "SecondViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _imageView = [[UIImageView alloc] initWithFrame: CGRectMake(0, 0, 394, 852)];
    _imageView.image = [UIImage imageNamed: @"xmy3.jpg"];
    [self.view addSubview: _imageView];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
   
    //使用高级动画
    //定义一个动画变换对象,它是一个层动画对象
    //用类方法获取动画对象
    CATransition *amin = [CATransition animation];
    //设置动画的时间长度
    amin.duration = 1.0;
    //设置动画主类型，决定动画的效果形式
    //有cube、reveal、pageCurl、pageUnCurl、suckEffect、rippleEffect
    amin.type = @"cube";
    //设置动画的子类型，例如动画的方向等
    amin.subtype = kCATransitionFromLeft;
    //设置动画的轨迹模式
    amin.timingFunction = [CAMediaTimingFunction functionWithName: kCAMediaTimingFunctionEaseOut];
    //将动画设置对象添加到动画上
    [self.navigationController.view.layer addAnimation: amin forKey: nil];
    
    
    //创建控制器二
    SecondViewController *vc2 = [[SecondViewController alloc] init];
    
    //推出到前面显示
    [self.navigationController pushViewController: vc2 animated: YES];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
