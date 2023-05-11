//
//  main.m
//  对象复制
//
//  Created by Eleven on 2023/5/10.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //copy与mutableCopy
        NSMutableString *book = [NSMutableString stringWithString: @"疯狂iOS讲义"];//定义一个book字符串
        
        NSMutableString *bookCopy = [book mutableCopy];//用mutableCopy给book复制一个副本
        
        [bookCopy replaceCharactersInRange: NSMakeRange(2, 3) withString: @"Android"];//复制后的bookCopy副本是可以修改的，这里做个修改，对原字符串的值也没有影响
        
        NSLog(@"book的值为：%@",book);//原值
        
        NSLog(@"bookCopy的值为：%@",bookCopy);//副本修改后的值，没有问题
        NSString *str = @"fkit";//定义一个str字符串
        
        NSMutableString *strCopy = [str mutableCopy];//用mutableCopy给str复制一个副本
        
        [strCopy appendString:@".org"];//向可变字符串后面追加字符串
        NSLog(@"%@",strCopy);
        
        NSMutableString *bookCopy2 = [book copy];//用copy方法复制一个book的副本（这个副本不可变）
        [bookCopy2 appendString:@"aa"];//这里会报错，因为copy创建的副本不可变，修改了就崩了
        
    }
    return 0;
}
