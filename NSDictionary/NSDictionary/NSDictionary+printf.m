//
//  NSDictionary+printf.m
//  NSDictionary
//
//  Created by Eleven on 2023/5/14.
//

#import "NSDictionary+printf.h"

@implementation NSDictionary (printf)

- (void) print {
    NSMutableString *result = [NSMutableString stringWithString: @"{"];//创建一个可变字符串，初始化为左花括号
    //快速枚举遍历调用该方法的对象的所有key元素
    for (id key in self) {
        [result appendString: [key description]];//向最开始的result对象后面追加访问到的key调用的改写过的description方法的返回值
        [result appendString:@"="];
        [result appendString: [self[key] description]];//使用下标访问法根据key获取对应的value
        [result appendString: @","];
    }
    NSUInteger len = [result length];//获取字符串长度
    [result deleteCharactersInRange:NSMakeRange(len - 2, 2)];//去掉字符串最后两个字符
    [result appendString:@"}"];
    NSLog(@"%@",result);
}

@end
