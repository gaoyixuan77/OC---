//
//  ViewController.m
//  懒加载
//
//  Created by Eleven on 2023/6/7.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.label.text = @"懒加载";
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self label];
    [self.view addSubview:_label];
}

//重写settre方法
- (UILabel*)label {
    if (!_label) {
        _label = [[UILabel alloc] initWithFrame:CGRectMake(20, 20, 70, 70)];
    }
    return _label;
}

@end
