//
//  main.m
//  定时器
//
//  Created by Eleven on 2023/5/10.
//

#import <Foundation/Foundation.h>
#import "ainfo.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        ainfo *p1 = [[ainfo alloc] init];
        [p1 appWillFinish];
    }
    return 0;
}
