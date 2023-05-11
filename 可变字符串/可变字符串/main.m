//
//  main.m
//  可变字符串
//
//  Created by Eleven on 2023/5/9.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *book = @"《疯狂iOS》";
        NSMutableString *str1 = [NSMutableString stringWithString: @"Hello"];
        
        [str1 appendString: @",iOS!"];//追加固定字符串
        NSLog(@"%@",str1);
        
        [str1 appendFormat:@"%@是一本非常不错的图书",book];//追加带变量的字符串
        NSLog(@"%@",str1);
        
        [str1 insertString:@"fkit.org" atIndex: 6];//在指定位置插入字符串
        NSLog(@"%@",str1);
        
        [str1 deleteCharactersInRange: NSMakeRange(6, 12)];//删除第六到第十二个字符
        NSLog(@"%@",str1);
        
        [str1 replaceCharactersInRange:NSMakeRange(6, 15) withString:@"Objective-C"];//将第六到第十五个字符改为“Objective-C”
        NSLog(@"%@",str1);
    }
    return 0;
}
