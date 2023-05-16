//
//  main.m
//  NSDictionary
//
//  Created by Eleven on 2023/5/14.
//

#import <Foundation/Foundation.h>
#import "FKUser.h"
#import "NSDictionary+printf.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //使用多个key-value对初始化创建NSDictionary对象
        NSDictionary *dict = [NSDictionary dictionaryWithObjectsAndKeys: [[FKUser alloc] initWithName: @"晓美焰" pass: @"123"],@"one",[[FKUser alloc] initWithName: @"鹿目圆" pass: @"345"],@"two",[[FKUser alloc] initWithName: @"晓美焰" pass: @"123"],@"three",[[FKUser alloc] initWithName: @"巴麻美" pass: @"178"],@"four",[[FKUser alloc] initWithName: @"美树沙耶香" pass: @"155"],@"five", nil];
        //对dict对象调用print方法，输出value和key的值
        [dict print];
        //调用count方法获得key-value对的数量
        NSLog(@"dict包含%ld个key-value对",[dict count]);
        //调用allKey方法获得所有的key值
        NSLog(@"dict的所有key是：%@",[dict allKeys]);
        //调用allKeysForObject方法获取指定value对应的全部key
        NSLog(@"<FKUser[name = 晓美焰,pass = 123]>对应的所有的key为：%@",[dict allKeysForObject: [[FKUser alloc] initWithName: @"晓美焰" pass: @"123"]]);
        
        //获取遍历dict所有value的枚举器
        NSEnumerator *en = [dict objectEnumerator];
        NSObject *value;
        //使用枚举器遍历dict中的所有value
        while (value = [en nextObject]) {
            NSLog(@"%@",value);
        }
        
        //使用指定代码块来迭代执行该集合中所有key-value对
        [dict enumerateKeysAndObjectsUsingBlock: ^(id key,id value,BOOL *stop) {
            if (![key  isEqual: @"two"]) {
                NSLog(@"key的值为：%@",key);
                [value say: @"圆神怎么你了"];
            } else {
                NSLog(@"key的值为：%@",key);
                [value say: @"我怎么你了"];
            }
        }];
    }
    return 0;
}
