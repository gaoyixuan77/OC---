//
//  main.m
//  深复制
//
//  Created by Eleven on 2023/5/10.
//

#import <Foundation/Foundation.h>
#import "FKDog.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        FKDog *dog1 = [FKDog new];
        dog1.name = [NSMutableString stringWithString:@"旺财"];
        dog1.age = 12;
        FKDog *dog2 = [dog1 copy];
        [dog2.name replaceCharactersInRange: NSMakeRange(0, 2) withString: @"snoopy"];
        NSLog(@"dog1的名字是：%@",dog1.name);
        NSLog(@"dog2的名字是：%@",dog2.name);
    }
    return 0;
}
