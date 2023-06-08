//
//  SecondViewController.m
//  present和dismiss
//
//  Created by Eleven on 2023/6/7.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor grayColor];
    self.title = @"视图2";
    UIBarButtonItem *btn3 = [[UIBarButtonItem alloc] initWithTitle:@"上一级" style:UIBarButtonItemStylePlain target:self action:@selector(pressFront)];
    self.navigationItem.leftBarButtonItem = btn3;
}

- (void)pressFront {
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
