//
//  ViewController.m
//  UISwitch
//
//  Created by Eleven on 2023/5/22.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize mySwitch = _mySwitch;
@synthesize myTimer = _myTimer;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //创建一个继承于UIView的开关对象
    _mySwitch = [[UISwitch alloc] init];
    
    //UISwitch控件的位置X，Y可以改变，但是它的大小（宽高）无法改变，即后两个数字没用
    _mySwitch.frame = CGRectMake(150, 200, 80, 40);
    
    [_mySwitch setOn: YES animated: YES];
    [_mySwitch setOnTintColor: [UIColor colorWithRed: 0.8 green: 0.2 blue: 0.4 alpha: 0.7]];
    
    [_mySwitch addTarget: self action: @selector(pressA) forControlEvents: UIControlEventValueChanged];
    
    [self.view addSubview: _mySwitch];
}

- (void) pressA {
    
    _myTimer = [NSTimer scheduledTimerWithTimeInterval: 0.5 target: self selector: @selector(pressB) userInfo: @"喜多川海梦" repeats: YES];
}

- (void) pressB {
    NSLog(@"suki!%@",_myTimer.userInfo);
}

@end
