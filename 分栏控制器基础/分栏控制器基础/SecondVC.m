//
//  SecondVC.m
//  分栏控制器基础
//
//  Created by Eleven on 2023/5/30.
//

#import "SecondVC.h"

@interface SecondVC ()

@end

@implementation SecondVC

- (void)viewDidLoad {
    [super viewDidLoad];
        
    //根据系统风格设置分栏控制器按钮，传入两个参数
    //第一个参数指分栏控制器的按钮风格，第二个参数是分栏控件对象的标签值
    UITabBarItem *tabBarItem = [[UITabBarItem alloc] initWithTabBarSystemItem: UITabBarSystemItemContacts tag: 103];
    
    //为分栏按钮设置提示的标记值信息，是系统的，无法变更
    tabBarItem.badgeValue = @"22";
    
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
