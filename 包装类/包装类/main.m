//
//  main.m
//  包装类
//
//  Created by Eleven on 2023/5/7.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSNumber *num = [NSNumber numberWithInt:20];
        NSNumber *de = [NSNumber numberWithDouble:3.4];
        NSLog(@"%d",[num intValue]);
        NSLog(@"%g",[de doubleValue]);
        NSNumber *ch = [[NSNumber alloc] initWithChar:'j'];
        NSLog(@"%@",ch);
    }
    return 0;
}
