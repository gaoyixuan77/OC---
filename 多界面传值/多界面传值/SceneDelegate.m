//
//  SceneDelegate.m
//  多界面传值
//
//  Created by Eleven on 2023/5/31.
//

#import "SceneDelegate.h"
#import "FirstViewController.h"
#import "SecondViewController.h"
#import "ThirdViewController.h"

@interface SceneDelegate ()

@end

@implementation SceneDelegate


- (void)scene:(UIScene *)scene willConnectToSession:(UISceneSession *)session options:(UISceneConnectionOptions *)connectionOptions {
   
    self.window.frame = [UIScreen mainScreen].bounds;
    
    [self.window makeKeyAndVisible];
    
    FirstViewController *vc1 = [[FirstViewController alloc] init];
    vc1.title = @"视图一";
    vc1.view.backgroundColor = [UIColor orangeColor];
    
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController: vc1];
    
    ThirdViewController *vc3 = [[ThirdViewController alloc] init];
    vc3.title = @"视图三";
    vc3.view.backgroundColor = [UIColor brownColor];
    
    NSArray *arr = [NSArray arrayWithObjects: nav, vc3, nil];
    
    UITabBarController *tbc = [[UITabBarController alloc] init];
    
    tbc.viewControllers = arr;
    
    self.window.rootViewController = tbc;
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
