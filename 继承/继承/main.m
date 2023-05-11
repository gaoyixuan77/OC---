//
//  main.m
//  继承
//
//  Created by Eleven on 2023/5/7.
//

#import <Foundation/Foundation.h>
#import "son.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        son *p1 = [[son alloc] init];
        p1.str = @"111";
        p1.str2 = @"222";
        p1.num = 333;
        
        NSLog(@"%@",p1.str);
        NSLog(@"%@",p1.str2);
        NSLog(@"%d",p1.num);
        [p1 test1];
        [p1 test2];
    }
    return 0;
}
