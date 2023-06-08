//
//  RootViewController.m
//  present和dismiss
//
//  Created by Eleven on 2023/6/7.
//

#import "RootViewController.h"
#import "FirstViewController.h"

@interface RootViewController ()

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor redColor];
    self.title = @"根视图";
    UIBarButtonItem *btn1 = [[UIBarButtonItem alloc] initWithTitle:@"下一级" style:UIBarButtonItemStylePlain target:self action:@selector(pressNext)];
    self.navigationItem.rightBarButtonItem = btn1;
}

- (void)pressNext {
    FirstViewController *vc1 = [[FirstViewController alloc] init];
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:vc1];
    //使模态视图全屏显示
    //nav.modalPresentationStyle = UIModalPresentationFullScreen;
    [self presentViewController:nav animated:YES completion:nil];
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
