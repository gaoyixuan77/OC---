//
//  main.m
//  NSCopying与NSMutableCopy协议
//
//  Created by Eleven on 2023/5/10.
//

#import <Foundation/Foundation.h>
#import "FKDog.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        FKDog *dog1 = [FKDog new];//新建一个dog1对象
        dog1.name = [NSMutableString stringWithString:@"旺财"];//用可变字符串的方式将dog1的名字赋值为旺财
        dog1.age = 20;
        FKDog *dog2 = [dog1 copy];//不添加协议这里会报错
        //FKDog *dog3 = [dog1 mutableCopy];//不添加协议的话这里也会报错，原因是自定义类不能直接调用这两个方法来复制自身
        dog2.name = [NSMutableString stringWithString:@"snoopy"];
        dog2.age = 12;
        NSLog(@"dog1的名字是：%@，年龄是：%d",dog1.name,dog1.age);
        NSLog(@"dog2的名字是：%@，年龄是：%d",dog2.name,dog2.age);
    }
    return 0;
}
