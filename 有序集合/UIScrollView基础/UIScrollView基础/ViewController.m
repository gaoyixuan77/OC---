//
//  ViewController.m
//  UIScrollView基础
//
//  Created by Eleven on 2023/5/23.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //定义并创建一个滚动视图并设置其位置，滚动视图可以对视图内容进行滚屏查看
    UIScrollView *sv = [[UIScrollView alloc] initWithFrame: CGRectMake(0, 0, 394, 852)];
    
    //是否按照整页滚动视图
    sv.pagingEnabled = YES;
    //是否可以开启滚动效果
    sv.scrollEnabled = YES;
   
    //设置画布的大小，画布显示在滚动视图的内部，一般大于frame的大小，第一个参数表示宽，第二个表示高
    sv.contentSize = CGSizeMake(394 * 5, 852);
    
    //是否可以边缘弹动效果
    sv.bounces = YES;
    //开启横向弹动效果
    sv.alwaysBounceHorizontal = YES;
    //开启纵向弹动效果
    sv.alwaysBounceVertical = NO;
   
    //是否显示横向滚动条
    sv.showsHorizontalScrollIndicator = NO;
    //是否显示纵向滚动条
    sv.showsVerticalScrollIndicator = NO;
    
    for (int i = 0; i < 5; i++) {
        NSString *imageName = [NSString stringWithFormat: @"xxp%d.jpg", i + 1];
        UIImage *aImage = [UIImage imageNamed: imageName];
        UIImageView *aView = [[UIImageView alloc] initWithImage: aImage];
        aView.frame = CGRectMake(394 * i, 0, 394 , 852);
        [sv addSubview: aView];
    }
    
    
    //设置背景颜色
    sv.backgroundColor = [UIColor orangeColor];
    
    [self.view addSubview: sv];
}


@end
