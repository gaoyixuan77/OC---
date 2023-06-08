//
//  SecondViewController.m
//  导航控制器动画
//
//  Created by Eleven on 2023/6/1.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"控制器二";
    _imageView = [[UIImageView alloc] initWithFrame: CGRectMake(0, 0, 394, 852)];
    _imageView.image = [UIImage imageNamed: @"xmy7.jpg"];
    
    [self.view addSubview: _imageView];
}

//点击屏幕空白处返回到控制器一
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
    //为视图二添加高级动画
    CATransition *ami = [CATransition animation];
    ami.duration = 1.0;
    ami.type = @"cube";
    ami.subtype = kCATransitionFromRight;
    [self.navigationController.view.layer addAnimation: ami forKey: nil];
    
    [self.navigationController popViewControllerAnimated: YES];
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
