//
//  FirstViewController.m
//  present和dismiss
//
//  Created by Eleven on 2023/6/7.
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
    UIBarButtonItem *btn2 = [[UIBarButtonItem alloc] initWithTitle:@"下一级" style:UIBarButtonItemStylePlain target:self action:@selector(pressNNext)];
    UIBarButtonItem *btn3 = [[UIBarButtonItem alloc] initWithTitle:@"上一级" style:UIBarButtonItemStylePlain target:self action:@selector(pressFFront)];
    self.navigationItem.leftBarButtonItem = btn3;
    self.navigationItem.rightBarButtonItem = btn2;
}
- (void)pressNNext {
    SecondViewController *vc2 = [[SecondViewController alloc] init];
    UINavigationController *navigationController = [[UINavigationController alloc] initWithRootViewController:vc2];
    //navigationController.modalPresentationStyle = UIModalPresentationFullScreen;
    [self presentViewController:navigationController animated:YES completion:nil];
}

- (void)pressFFront {
    [self dismissViewControllerAnimated:YES completion:nil];
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
