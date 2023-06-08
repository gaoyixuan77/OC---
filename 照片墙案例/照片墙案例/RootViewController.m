//
//  RootViewController.m
//  照片墙案例
//
//  Created by Eleven on 2023/5/31.
//

#import "RootViewController.h"
#import "ImageViewController.h"

@interface RootViewController ()

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //设置视图标题和视图背景颜色
    self.title = @"照片墙";
    self.view.backgroundColor = [UIColor orangeColor];
    //设置导航栏是否透明
    self.navigationController.navigationBar.translucent = YES;
    
    //创建一个滚动视图并设置位置和画布大小
    UIScrollView *sv = [[UIScrollView alloc] init];
    sv.frame = CGRectMake(5, 10, 394, 852);
    sv.contentSize = CGSizeMake(394, 852 * 1.5);
    
    //打开交互事件，这个关了的话会导致无法使点击等手势操作成功运行
    sv.userInteractionEnabled = YES;
    
    //使用for循环给根视图上添加图片对象
    for (int i = 0; i < 8; i++) {
        //创建一个代表所传图片文件名字的字符串对象
        NSString *strName = [NSString stringWithFormat: @"xmy%d.jpg",i + 1];
        
        //创建一个图片对象，传入的图片就是名字为字符串对象的那个图
        UIImage *image = [UIImage imageNamed: strName];
        //创建一个图片视图对象
        UIImageView *iView = [[UIImageView alloc] initWithImage: image];
        
        //为该图片视图对象设置位置，按要求进行相应的计算使其排列
        iView.frame = CGRectMake(10 + (i % 3) * 125, (i / 3) * 165, 110, 150);
        //使该视图在滚动视图上显示
        [sv addSubview: iView];
        //打开交互事件，这个关了的话会导致无法使点击等手势操作成功运行
        iView.userInteractionEnabled = YES;
        
        //创建点击手势使其执行事件函数
        UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget: self action: @selector(pressTap:)];
        
        tap.numberOfTapsRequired = 1;
        tap.numberOfTouchesRequired = 1;

        [iView addGestureRecognizer: tap];
        
        //图像对象的tag值
        iView.tag = 101 + i;
        
    }
    
    [self.view addSubview: sv];
}

- (void)pressTap: (UITapGestureRecognizer*)tap {
    UIImageView *imageView = (UIImageView*)tap.view;
    
    //创建显示视图控制器
    ImageViewController *imageShow = [[ImageViewController alloc] init];
    //tag在一些时候可以做为索引，例如这里就可以做为图片的位置数
    imageShow.imageTag = imageView.tag;
    
    //推入导航栏
    [self.navigationController pushViewController: imageShow animated: YES];
}


//使用直接setter图片属性的方法
//- (void)pressTap: (UITapGestureRecognizer*) tap {
//    //这里是用了一个强制类型转换，指将传入的tap对象转换为UIImageView类的对象然后赋值给imageView
//    UIImageView *imageView = (UIImageView*)tap.view;
//
//    ImageViewController *imageShow = [[ImageViewController alloc] init];
//    imageShow.image = imageView.image;
//    [self.navigationController pushViewController: imageShow animated: YES];
//}





/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
