//
//  main.m
//  NSString 的功能2
//
//  Created by Eleven on 2023/5/9.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *str1 = @"Hello";
        NSString *str2 = @"Hello";
        NSString *book = @"《疯狂iOS》";
        
        str1 = [str1 stringByAppendingString: @",iOS!"];
        NSLog(@"str1后接“，iOS”得到的字符串：%@",str1);
        
        str2 = [str2 stringByAppendingString: book];
        NSLog(@"str2后接book得到的字符串：%@",str2);
        
        const char *cstr = [str1 UTF8String];
        NSLog(@"获取的C字符串：%s",cstr);
        
        str1 = [str1 stringByAppendingFormat: @"%@是一本非常不错的书",book];
        NSLog(@"%@",str1);
        
        NSString *s1 = [str1 substringToIndex: 5];
        NSLog(@"s1前5个字符组成的字符串：%@",s1);
        
        NSString *s2 = [str1 substringFromIndex: 10];
        NSLog(@"获取str1从第10个字符开始以后的所有字符：%@",s2);
        
        NSString *s3 = [str1 substringWithRange: NSMakeRange(5,10)];
        NSLog(@"获取str1中第5个到第10个字符：%@",s3);
        
        NSRange pos = [str1 rangeOfString: @"iOS"];
        NSLog(@"iOS在str1中出现的开始位置：%ld,长度为：%ld",pos.location,pos.length);
        
        str1 = [str1 uppercaseString];
        NSLog(@"str1的字符转化为大写：%@",str1);
    }
    return 0;
}
