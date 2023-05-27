//
//  ViewController.m
//  步进器和分栏控件
//
//  Created by Eleven on 2023/5/22.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize stepper = _stepper;
@synthesize segControl = _segControl;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //创建步进器---------------------------------------------------------------------------------------
    _stepper = [[UIStepper alloc] init];
    //同样的，步进器的位置可以变，但大小不可变，后两个参数没用
    _stepper.frame = CGRectMake(150, 200, 100, 100);
    //设置步进器步数最大值
    _stepper.minimumValue = 0;
    //设置步进器步数最小值
    _stepper.maximumValue = 100;
    //设置步进器步数当前值
    _stepper.value = 50;
    //设置步进器每走一步的步数大小值
    _stepper.stepValue = 10;
    //是否可以重复相应事件操作，这个为YES的时候，长按步进器的按钮，就会持续一直执行事件函数
    //这个为NO的时候，就只会在按下的时候执行一次事件函数，松开再按才会执行下一次
    _stepper.autorepeat = YES;
    //是否将步进结果通过事件函数相应出来
    //当这个为YES的时候，它会一边执行步进器，一边执行事件函数，确保每一次步进的值都会调用事件函数
    //当这个为NO的时候，它只会执行步进器，但是不会执行事件函数，只有在手指松开步进器按钮的时刻才会把当前的值调用一次事件函数
    _stepper.continuous = NO;
    //添加事件函数
    [_stepper addTarget: self action: @selector(pressStepper) forControlEvents: UIControlEventValueChanged];
    [self.view addSubview: _stepper];
    
    //创建分栏控件--------------------------------------------------------------------------------------
    _segControl = [[UISegmentedControl alloc] init];
    //这个控件宽度可变，但是高度不可变
    _segControl.frame = CGRectMake(150, 300, 200, 50);
    //向分栏控件中添加按钮元素，传入三个参数
    //第一个参数表示添加的按钮的名字的文本内容
    //第二个参数表示添加的按钮在控件中的索引
    //第三个参数表示选择按钮时是否使用切换动画
    [_segControl insertSegmentWithTitle: @"0x" atIndex: 0 animated: YES];
    [_segControl insertSegmentWithTitle: @"1x" atIndex: 1 animated: YES];
    [_segControl insertSegmentWithTitle: @"2x" atIndex: 2 animated: YES];
    //设置控件当前所在的索引值
    _segControl.selectedSegmentIndex = 0;
    //为控件添加事件函数
    [_segControl addTarget: self action: @selector(segChange) forControlEvents: UIControlEventValueChanged];
    [self.view addSubview: _segControl];
}

- (void) segChange {
    NSLog(@"%ld", _segControl.selectedSegmentIndex);
}

- (void) pressStepper {
    NSLog(@"已完成一次步进，当前值%.1f", _stepper.value);
}

@end
