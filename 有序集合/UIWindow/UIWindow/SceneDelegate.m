//
//  SceneDelegate.m
//  UIWindow
//
//  Created by Eleven on 2023/5/21.
//

#import "SceneDelegate.h"

@interface SceneDelegate ()

@end

@implementation SceneDelegate


- (void)scene:(UIScene *)scene willConnectToSession:(UISceneSession *)session options:(UISceneConnectionOptions *)connectionOptions {
    //首先是对UIWindow对象创建视图控制器
    self.window.rootViewController = [[UIViewController alloc] init];
    //对UIWindow设置背景颜色
    self.window.backgroundColor = [UIColor orangeColor];
    //可以直接给window上添加视图
    UIView *view1 = [[UIView alloc] initWithFrame: CGRectMake(100, 100, 100, 50)];
    view1.backgroundColor = [UIColor blackColor];
    //当创建一个新的背景视图，然后将这个视图作为window的子视图，再让view1作为背景视图的子视图，就会有一个层级关系
    //当移动背景视图的时候，view1视图也会随着移动，子视图是参照父视图的坐标系
    UIView *backView = [[UIView alloc] initWithFrame: CGRectMake(100, 300, 200, 200)];
    backView.backgroundColor = [UIColor redColor];
    [backView addSubview: view1];
    //将view1视图添加到window上
    [self.window addSubview: backView];

    //打印不同视图的window属性：
    NSLog(@"%@", view1.window);
    NSLog(@"%@", backView.window);
    NSLog(@"%@", self.window);
    //可以看出，它们三个的window属性是同一个window

    //使window有效并显示在屏幕上
    [self.window makeKeyAndVisible];

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
