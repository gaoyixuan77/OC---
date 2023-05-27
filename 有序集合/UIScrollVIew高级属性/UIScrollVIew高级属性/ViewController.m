//
//  ViewController.m
//  UIScrollVIew高级属性
//
//  Created by Eleven on 2023/5/23.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _scrollView = [[UIScrollView alloc] initWithFrame: CGRectMake(0, 0, 394, 852)];
    
    _scrollView.bounces = YES;
    
    //是否允许通过点击屏幕让滚动视图响应事件，YES允许，NO不允许
    //_scrollView.userInteractionEnabled = YES;
    
    _scrollView.contentSize = CGSizeMake(394 , 852 * 5);
    
    for (int i = 0; i < 5; i++) {
        NSString *aName = [NSString stringWithFormat: @"xxp%d.jpg", i + 1];
        UIImage *aImage = [UIImage imageNamed: aName];
        //创建图像视图对象
        UIImageView *aView = [[UIImageView alloc] init];
        //为图像视图赋值
        aView.image = aImage;
        aView.frame = CGRectMake(0, 852 * i, 394, 852);
        
        [_scrollView addSubview: aView];
        
    }
    
    //设置滚动视图的移动位置（偏移位置），它决定了画布显示的最终图像位置
    _scrollView.contentOffset = CGPointMake(0, 0);
    
    _scrollView.pagingEnabled = YES;
    
    //加了代理函数后，可以使用此方法将当前视图控制器作为代理对象
    _scrollView.delegate = self;
    
    [self.view addSubview: _scrollView];
}

//当点击画布外的其他地方时，将滚动的视图移动到指定位置
- (void) touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    _scrollView.contentOffset = CGPointMake(0, 0);
}

//scrollViewDelegate协议的一些协议函数--------------------------------------------------------------------------------------------------------------

//当滚动视图移动时，只要offset坐标发生变化，都会调用此函数,因此此函数随时监控画布的位置
//此函数的参数是调用此协议函数的滚动视图对象
- (void) scrollViewDidScroll:(UIScrollView *)scrollView {
    NSLog(@"y = %f",scrollView.contentOffset.y);
}

//当视图结束拖动的时候调用此函数
- (void) scrollViewDidEndDragging:(UIScrollView *)scrollView willDecelerate:(BOOL)decelerate {
    NSLog(@"结束拖动");
}

//当视图即将开始被拖动的时候调用
- (void) scrollViewWillBeginDragging:(UIScrollView *)scrollView {
    NSLog(@"即将开始被拖动");
}

//滚动视图即将结束被拖动时调用
- (void) scrollViewWillEndDragging:(UIScrollView *)scrollView withVelocity:(CGPoint)velocity targetContentOffset:(inout CGPoint *)targetContentOffset {
    NSLog(@"即将结束拖动");
}

//滚动视图拖动即将减速的时候调用
- (void) scrollViewWillBeginDecelerating:(UIScrollView *)scrollView {
    NSLog(@"视图拖动即将减速");
}

//滚动视图拖动已经结束减速时调用（视图停止的瞬间）
- (void) scrollViewDidEndDecelerating:(UIScrollView *)scrollView {
    NSLog(@"视图拖动已经结束减速");
}
 
@end
