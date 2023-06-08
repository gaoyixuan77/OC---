//
//  FirstViewController.m
//  多界面传值
//
//  Created by Eleven on 2023/5/31.
//

#import "FirstViewController.h"
#import "SecondViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    
}

//点击视图的空白处的时候，推出视图控制器二
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    SecondViewController *vc2 = [[SecondViewController alloc] init];
    
    vc2.view.backgroundColor = [UIColor grayColor];
    
    //将当前控制器做为代理对象
    vc2.delegate = self;
    
    //推出视图控制器二
    [self.navigationController pushViewController: vc2 animated: YES];
}

- (void)changeColor:(UIColor *)color {
    self.view.backgroundColor = color;
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
