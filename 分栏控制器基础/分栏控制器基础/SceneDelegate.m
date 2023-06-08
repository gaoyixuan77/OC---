//
//  SceneDelegate.m
//  分栏控制器基础
//
//  Created by Eleven on 2023/5/30.
//

#import "SceneDelegate.h"
#import "FirstVC.h"
#import "SecondVC.h"
#import "ThirdVC.h"

@interface SceneDelegate ()

@end

@implementation SceneDelegate


- (void)scene:(UIScene *)scene willConnectToSession:(UISceneSession *)session options:(UISceneConnectionOptions *)connectionOptions {
    //创建三个视图控制器并更改背景颜色和标题
    FirstVC *vc1 = [[FirstVC alloc] init];
    vc1.title = @"视图1";
    SecondVC *vc2 = [[SecondVC alloc] init];
    vc2.title = @"视图2";
    ThirdVC *vc3 = [[ThirdVC alloc] init];
    vc3.title = @"视图3";
    
    vc1.view.backgroundColor = [UIColor brownColor];
    vc2.view.backgroundColor = [UIColor orangeColor];
    vc3.view.backgroundColor = [UIColor yellowColor];
    
    //创建分栏控制器对象
    UITabBarController *tbc = [[UITabBarController alloc] init];
    
    //创建一个控制器数组对象，并将所有要被分栏控制器管理的对象添加进数组
    //分栏控制器的按钮的位置就取决于在数组中存放的位置
    NSArray *arrVC = [NSArray arrayWithObjects: vc1, vc2, vc3, nil];
    
    //将分栏控制器管理数组赋值
    tbc.viewControllers = arrVC;
    
    //将分栏控制器做为根视图控制器
    self.window.rootViewController = tbc;
    
    //设置选中的视图控制器的索引
    //通过索引来确定一打开程序的时候是显示的哪一个视图控制器，并且此时分栏控制器选中的控制器对象就是索引为2的视图控制器
    tbc.selectedIndex = 2;
    
    //分栏控制器选中的控制器对象
    if (tbc.selectedViewController == vc3) {
        NSLog(@"分栏控制器选中的控制器对象是索引为2的视图控制器");
    }
    
    //设置分栏控制器的工具栏的透明度
    tbc.tabBar.translucent = NO;
    //设置分栏控制器工具栏的背景颜色
    tbc.tabBar.backgroundColor = [UIColor whiteColor];
    //设置分栏控制器工具栏的按钮选择时颜色
    tbc.tabBar.tintColor = [UIColor redColor];
    
    
}


- (void)sceneDidDisconnect:(UIScene *)scene {
    // Called as the scene is being released by the system.
    // This occurs shortly after the scene enters the background, or when its session is discarded.
    // Release any resources associated with this scene that can be re-created the next time the scene connects.
    // The scene may re-connect later, as its session was not necessarily discarded (see `application:didDiscardSceneSessions` instead).
}


- (void)sceneDidBecomeActive:(UIScene *)scene {
    // Called when the scene has moved from an inactive state to an active state.
    // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
}


- (void)sceneWillResignActive:(UIScene *)scene {
    // Called when the scene will move from an active state to an inactive state.
    // This may occur due to temporary interruptions (ex. an incoming phone call).
}


- (void)sceneWillEnterForeground:(UIScene *)scene {
    // Called as the scene transitions from the background to the foreground.
    // Use this method to undo the changes made on entering the background.
}


- (void)sceneDidEnterBackground:(UIScene *)scene {
    // Called as the scene transitions from the foreground to the background.
    // Use this method to save data, release shared resources, and store enough scene-specific state information
    // to restore the scene back to its current state.
}


@end
