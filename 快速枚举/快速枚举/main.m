//
//  main.m
//  快速枚举
//
//  Created by Eleven on 2023/5/14.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSArray *array = [NSArray arrayWithObjects:@"晓美焰",@"鹿目圆",@"巴麻美",@"美树沙耶香",nil];
        for (id object in array) {
            NSLog(@"%@",object);
        }
    }
    return 0;
}
