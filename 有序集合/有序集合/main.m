//
//  main.m
//  有序集合
//
//  Created by Eleven on 2023/5/14.
//

#import <Foundation/Foundation.h>

//定义一个函数，可以把NSSet集合转化为字符串
//方便我们调试观察结果
NSString *NSCollectionToString(id collection) {
    NSMutableString *result = [NSMutableString stringWithString:@"["];
    for(id obj in collection) {
        [result appendString: [obj description]];
        [result appendString:@","];
    }
    NSUInteger len = [result length];//获取字符串长度
    [result deleteCharactersInRange:NSMakeRange(len - 1, 1)];//去除最后一个字符
    [result appendString:@"]"];
    return result;
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //创建集合时故意用重复的元素，可看到程序只会保留其中一个
        NSOrderedSet *set = [NSOrderedSet orderedSetWithObjects:[NSNumber numberWithInt: 40],[NSNumber numberWithInt: 12],[NSNumber numberWithInt: -9],[NSNumber numberWithInt: 28],[NSNumber numberWithInt: 12],[NSNumber numberWithInt: 17], nil];
        NSLog(@"%@",NSCollectionToString(set));
        
        //根据索引获取元素
        NSLog(@"set集合中的第一个元素：%@",[set firstObject]);
        NSLog(@"set集合中的最后一个元素：%@",[set lastObject]);
        NSLog(@"set集合中索引为2的元素：%@",[set objectAtIndex:2]);
        NSLog(@"28在set集合中的索引为：%ld",[set indexOfObject:[NSNumber numberWithInt:28]]);
        
        //对集合进行过滤，获取元素值大于20的元素的索引
        NSIndexSet *indexSet = [set indexesOfObjectsPassingTest: ^(id obj,NSUInteger idx,BOOL *stop) {
            return (BOOL)([obj intValue] > 20);
        }];
        NSLog(@"set中元素值大于20的元素的索引为：%@",indexSet);
    }
    return 0;
}
