//
//  main.m
//  UIViewController基础
//
//  Created by Eleven on 2023/5/21.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"


//整个程序的主函数，入口函数
int main(int argc, char * argv[]) {
    NSString * appDelegateClassName;
    @autoreleasepool {
        appDelegateClassName = NSStringFromClass([AppDelegate class]);
    }
    return UIApplicationMain(argc, argv, nil, appDelegateClassName);
}
