//
//  FirstViewController.m
//  push与pop
//
//  Created by Eleven on 2023/6/6.
//

#import "FirstViewController.h"
#import "SecondViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor orangeColor];
    self.title = @"视图1";
    UIBarButtonItem *btn1 = [[UIBarButtonItem alloc] initWithTitle: @"下一级" style: UIBarButtonItemStylePlain target: self action: @selector(pressNext)];
    self.navigationItem.rightBarButtonItem = btn1;
}

- (void)pressNext {
    SecondViewController *vc2 = [[SecondViewController alloc] init];
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
