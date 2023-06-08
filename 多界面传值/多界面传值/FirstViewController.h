//
//  FirstViewController.h
//  多界面传值
//
//  Created by Eleven on 2023/5/31.
//

#import <UIKit/UIKit.h>
#import "SecondViewController.h"

NS_ASSUME_NONNULL_BEGIN

//首先在FirstViewController中实现控制视图二的代理
@interface FirstViewController : UIViewController<SecondVCDelegate>

- (void)changeColor:(UIColor *)color;

@end

NS_ASSUME_NONNULL_END
