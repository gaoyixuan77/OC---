//
//  main.m
//  ==
//
//  Created by Eleven on 2023/5/5.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int it = 65;
        int fl = 65.0f;
        char ch = 'A';
        NSString *str1 = @"hello";
        NSString *str2 = @"hello";
        NSString *str3 = @"byebye";
        NSLog(@"%d",(it==fl)); //结果为1
        NSLog(@"%d",(fl == ch)); //结果为1
        NSLog(@"%d",(str1 == str2)); //结果为1
        NSLog(@"%d",(str2 == str3)); //结果为0
        //常量池
        NSString *p1 = @"晓美焰";
        NSString *p2 = @"晓美焰";
        NSLog(@"p1地址：%p,p2地址：%p",p1,p2);
        NSLog(@"%d",(p1 == p2)); //结果为1
        NSString *p3 = [NSString stringWithFormat:@"晓美焰"];
        NSString *p4 = [NSString stringWithFormat:@"晓美焰"];
        NSLog(@"p3地址：%p",p3);
        NSLog(@"p4地址：%p",p4);
        NSLog(@"%d",(p1 == p3)); //结果为0
        NSLog(@"%d",(p4 == p3)); //结果为0
        NSString *p5 = [NSString stringWithFormat:@"hello"];
        NSString *p6 = [NSString stringWithFormat:@"hello"];
        NSLog(@"p5地址：%p",p5);
        NSLog(@"p6地址：%p",p6);
        NSLog(@"%d",(p5 == p6)); //结果为1
    }
    return 0;
}
