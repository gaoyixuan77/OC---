//
//  SecondViewController.m
//  push与pop
//
//  Created by Eleven on 2023/6/6.
//

#import "SecondViewController.h"
#import "ThirdViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor grayColor];
    self.title = @"视图2";
    UIBarButtonItem *btn2 = [[UIBarButtonItem alloc] initWithTitle: @"下一级" style: UIBarButtonItemStylePlain target: self action: @selector(pressRoot)];
    self.navigationItem.rightBarButtonItem = btn2;
}

- (void)pressRoot {
    ThirdViewController *vc3 = [[ThirdViewController alloc] init];
    
    [self.navigationController pushViewController: vc3 animated: YES];
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
