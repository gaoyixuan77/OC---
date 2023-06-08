//
//  SecondViewController.h
//  多界面传值
//
//  Created by Eleven on 2023/5/31.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

//定义一个视图控制器二的代理协议
@protocol SecondVCDelegate <NSObject>

- (void)changeColor: (UIColor*)color;

@end

@interface SecondViewController : UIViewController

@property (assign, nonatomic) NSInteger tag;

//定义一个代理对象，代理对象会执行协议函数
//通过代理对象实现协议函数，达到代理对象改变本身属性的目的
//代理对象一定要实现代理协议
@property (assign, nonatomic) id<SecondVCDelegate> delegate;

@end

NS_ASSUME_NONNULL_END
