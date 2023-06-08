//
//  FirstVC.m
//  分栏控制器基础
//
//  Created by Eleven on 2023/5/30.
//

#import "FirstVC.h"

@interface FirstVC ()

@end

@implementation FirstVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //创建一个分栏按钮对象,传入三个参数
    //第一个参数表示标题文字内容
    //第二个参数表示显示图片
    //第三个参数表示对象的标记值
    UITabBarItem *tabBarItem = [[UITabBarItem alloc] initWithTitle: @"发现" image: nil tag: 101];
    
    self.tabBarItem = tabBarItem;
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
