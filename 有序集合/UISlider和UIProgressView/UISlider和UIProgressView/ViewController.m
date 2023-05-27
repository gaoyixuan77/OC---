//
//  ViewController.m
//  UISlider和UIProgressView
//
//  Created by Eleven on 2023/5/22.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize pSlider = _slider;
@synthesize pView = _progressView;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //创建进度条
    _progressView = [[UIProgressView alloc] init];
    _progressView.frame = CGRectMake(150, 100, 200, 80);
    _progressView.progressTintColor = [UIColor blueColor];
    //设置进度条的进度，传入的参数是0～1的值
    _progressView.progress = 0.5;
    //设置进度条风格特征
    _progressView.progressViewStyle = UIProgressViewStyleDefault;
    [self.view addSubview: _progressView];
    
    //创建滑动条
    _slider = [[UISlider alloc] init];
    //滑动条的高度是不可改变的
    _slider.frame = CGRectMake(150, 200, 200, 80);
    _slider.tintColor = [UIColor orangeColor];
    //设置滑动条最大值，最小值，最小值可以为负
    _slider.maximumValue = 100;
    _slider.minimumValue = 0;
    //设置滑动条滑块的位置
    _slider.value = 30;
    
    //设置左侧滑条颜色
    _slider.minimumTrackTintColor = [UIColor orangeColor];
    //设置右侧滑条颜色
    _slider.maximumTrackTintColor = [UIColor brownColor];
    //设置滑块颜色
    _slider.thumbTintColor = [UIColor purpleColor];
    
    //为滑动条添加事件函数
    [_slider addTarget: self action: @selector(pressSlider) forControlEvents: UIControlEventValueChanged];
    
    [self.view addSubview: _slider];
}

- (void) pressSlider {
    //使进度条随着滑动条的变化而变化
    _progressView.progress = (_slider.value - _slider.minimumValue) / (_slider.maximumValue - _slider.minimumValue);
    NSLog(@"value = %f", _slider.value);
}

@end
