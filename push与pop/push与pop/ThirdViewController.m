//
//  ThirdViewController.m
//  push与pop
//
//  Created by Eleven on 2023/6/6.
//

#import "ThirdViewController.h"

@interface ThirdViewController ()

@end

@implementation ThirdViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor brownColor];
    self.title = @"视图3";
    UIBarButtonItem *btn3 = [[UIBarButtonItem alloc] initWithTitle: @"pop返回上一级" style: UIBarButtonItemStylePlain target: self action: @selector(pressFront)];
    UIBarButtonItem *btn4 = [[UIBarButtonItem alloc] initWithTitle: @"返回根视图" style: UIBarButtonItemStylePlain target: self action: @selector(pressRoot)];
    NSArray *arr = [NSArray arrayWithObjects: btn3, btn4, nil];
    self.navigationItem.rightBarButtonItems = arr;
}

- (void)pressFront {
    [self.navigationController popViewControllerAnimated: YES];
}

- (void)pressRoot {
    [self.navigationController popToRootViewControllerAnimated: YES];
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
