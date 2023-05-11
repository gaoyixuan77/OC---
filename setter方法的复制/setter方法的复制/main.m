//
//  main.m
//  setter方法的复制
//
//  Created by Eleven on 2023/5/11.
//

#import <Foundation/Foundation.h>
#import "FKItem.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        FKItem *item = [FKItem new];
        item.name = [NSMutableString stringWithString:@"疯狂iOS讲义"];
        [item.name appendString: @"fkit"];//上面这段会报错，是因为如下原因：
        //如上是用点语法setter方法给item的name赋值，这里的setter方法相当于在实现部分有如下代码：
        //- (void) setName: (NSMutableString*) aname {
        //    name = [aname copy];
        //}
        //而在我们定义name属性的时候用的是copy指示符，复制的是不可变的副本，因此程序赋给FKItem对象的name实例变量的值仍然是不可变字符串
        
    }
    return 0;
}
