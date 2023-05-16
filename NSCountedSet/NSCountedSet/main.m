//
//  main.m
//  NSCountedSet
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
        NSCountedSet *set = [NSCountedSet setWithObjects: @"疯狂iOS讲义",@"疯狂andro讲义",@"疯狂Ajax讲义", nil];
        
        //向set里添加两次对应字符串
        [set addObject:@"疯狂iOS讲义"];
        [set addObject:@"疯狂iOS讲义"];
        NSLog(@"%@",NSCollectionToString(set));
        NSLog(@"疯狂iOS讲义的添加次数为：%ld",[set countForObject:@"疯狂iOS讲义"]);
        
        //从set中删除对应字符串但不删完
        [set removeObject: @"疯狂iOS讲义"];
        NSLog(@"删除疯狂iOS讲义一次后的结果：%@",NSCollectionToString(set));
        NSLog(@"删除疯狂iOS讲义一次后的添加次数：%ld",[set countForObject:@"疯狂iOS讲义"]);
        
        //从set中删除对应字符串且删完
        [set removeObject: @"疯狂iOS讲义"];
        [set removeObject: @"疯狂iOS讲义"];
        NSLog(@"删除疯狂iOS讲义3次后的结果：%@",NSCollectionToString(set));
        NSLog(@"删除疯狂iOS讲义3次后的添加次数：%ld",[set countForObject:@"疯狂iOS讲义"]);
    }
    return 0;
}
