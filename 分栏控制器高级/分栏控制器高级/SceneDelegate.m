//
//  SceneDelegate.m
//  分栏控制器高级
//
//  Created by Eleven on 2023/5/30.
//

#import "SceneDelegate.h"
#import "FirstViewController.h"
#import "SecondViewController.h"
#import "ThirdViewController.h"
#import "ForthViewController.h"
#import "FifthViewController.h"
#import "SixthViewController.h"

@interface SceneDelegate ()

@end

@implementation SceneDelegate


- (void)scene:(UIScene *)scene willConnectToSession:(UISceneSession *)session options:(UISceneConnectionOptions *)connectionOptions {
    
    FirstViewController *vc1 = [[FirstViewController alloc] init];
    SecondViewController *vc2 = [[SecondViewController alloc] init];
    ThirdViewController *vc3 = [[ThirdViewController alloc] init];
    ForthViewController *vc4 = [[ForthViewController alloc] init];
    FifthViewController *vc5 = [[FifthViewController alloc] init];
    SixthViewController *vc6 = [[SixthViewController alloc] init];

    vc1.title = @"视图1";
    vc2.title = @"视图2";
    vc3.title = @"视图3";
    vc4.title = @"视图4";
    vc5.title = @"视图5";
    vc6.title = @"视图6";
    
    vc1.view.backgroundColor = [UIColor redColor];
    vc2.view.backgroundColor = [UIColor orangeColor];
    vc3.view.backgroundColor = [UIColor yellowColor];
    vc4.view.backgroundColor = [UIColor greenColor];
    vc5.view.backgroundColor = [UIColor blueColor];
    vc6.view.backgroundColor = [UIColor purpleColor];
    
    NSArray *arrVC = [NSArray arrayWithObjects: vc1, vc2, vc3, vc4, vc5, vc6, nil];
    
    UITabBarController *btc = [[UITabBarController alloc] init];
    btc.viewControllers = arrVC;
    btc.tabBar.backgroundColor = [UIColor whiteColor];
    
    self.window.rootViewController = btc;
    
    //处理UITabBarControllerDelegate协议函数
    //设置代理
    btc.delegate = self;
}

//以下是协议中函数的用法，其中“编辑”是指在分栏控制器中的more中通过拖动更改和交换显示和折叠的视图控制器的操作------------------------------------------------------------
//即将开始编辑前会调用此协议函数
- (void)tabBarController:(UITabBarController *)tabBarController willBeginCustomizingViewControllers:(NSArray<__kindof UIViewController *> *)viewControllers {
    NSLog(@"编辑前");
}

//即将结束前调用该协议函数
- (void)tabBarController:(UITabBarController *)tabBarController willEndCustomizingViewControllers:(NSArray<__kindof UIViewController *> *)viewControllers changed:(BOOL)changed {
    NSLog(@"即将结束前");
}

//已经结束编辑时调用该协议函数
- (void)tabBarController:(UITabBarController *)tabBarController didEndCustomizingViewControllers:(NSArray<__kindof UIViewController *> *)viewControllers changed:(BOOL)changed {
    if (changed == YES) {
        NSLog(@"顺序发生改变");
    }
    NSLog(@"已经结束编辑");
}

//选中控制器对象时调用该协议函数
- (void)tabBarController:(UITabBarController *)tabBarController didSelectViewController:(UIViewController *)viewController {
//    if (tabBarController.viewControllers[tabBarController.selectedIndex] == viewController) {
//        NSLog(@"选中的视图索引与当前传入的视图索引相同");
//    }
    NSLog(@"选中控制器对象");
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
