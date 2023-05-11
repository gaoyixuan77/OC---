//
//  ainfo.m
//  定时器
//
//  Created by Eleven on 2023/5/10.
//

#import "ainfo.h"

@implementation ainfo

@synthesize count;

- (void) appWillFinish {
    NSLog(@"111");
    [NSTimer scheduledTimerWithTimeInterval: 0.5 target: self selector: @selector(info:) userInfo: nil repeats: YES];
}
- (void) info:(NSTimer *)timer {
    NSLog(@"正在执行第%d次任务",self.count++);
    if(self.count > 10) {
        NSLog(@"取消执行定时器");
        [timer invalidate];
    }
}

@end
