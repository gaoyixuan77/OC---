//
//  main.m
//  对NSDictionary的key排序
//
//  Created by Eleven on 2023/5/15.
//

#import <Foundation/Foundation.h>
#import "NSDictionary+print.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //使用多个key-value对创建NSDictionary
        NSDictionary *dict = [NSDictionary dictionaryWithObjectsAndKeys: @"OC",@"one",@"Ruby",@"two",@"Python",@"three",@"Perl",@"four", nil];
        [dict print];//调用print打印dict中所有的元素
        
        //
        NSArray *keyArr1 = [dict keysSortedByValueUsingSelector: @selector(compare:)];
        NSLog(@"%@",keyArr1);
        NSArray *keyArr2 = [dict keysSortedByValueUsingComparator: ^(id value1,id value2) {
            if ([value1 length] > [value2 length]) {
                return NSOrderedDescending;
            }
            if ([value1 length] < [value2 length]) {
                return NSOrderedAscending;
            }
            return NSOrderedSame;
        }];
        NSLog(@"%@",keyArr2);
        [dict writeToFile: @"myFile.txt" atomically: YES];
    }
    return 0;
}
