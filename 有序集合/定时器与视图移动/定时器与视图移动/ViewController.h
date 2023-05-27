//
//  ViewController.h
//  定时器与视图移动
//
//  Created by Eleven on 2023/5/21.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
    //定义一个定时器对象
    //定时器可以每隔固定的时间发送一个消息，通过此消息来调用相应的事件函数
    //通过此函数可在固定时间段来完成一个根据时间间隔的任务
    NSTimer *_timeView;
}
//定时器的属性对象，是公有的
@property (retain, nonatomic) NSTimer *timeView;

@end

