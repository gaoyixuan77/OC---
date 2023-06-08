//
//  SecondViewController.m
//  多界面传值
//
//  Created by Eleven on 2023/5/31.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //改变颜色导航栏按钮
    UIBarButtonItem *btnChange = [[UIBarButtonItem alloc] initWithTitle: @"改变颜色" style: UIBarButtonItemStyleDone target: self action: @selector(pressChange)];
    
    self.navigationItem.rightBarButtonItem = btnChange;
}

//点击按钮的时候，触发代理的操作
- (void)pressChange {
    //代理对象调用事件函数
    [_delegate changeColor: [UIColor redColor]];
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
