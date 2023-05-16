//
//  main.m
//  对集合元素的整体调用方法
//
//  Created by Eleven on 2023/5/14.
//

#import <Foundation/Foundation.h>
#import "FKUser.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSArray *array = [NSArray arrayWithObjects:[[FKUser alloc] initWithName: @"sun" pass: @"123"],[[FKUser alloc] initWithName: @"bai" pass: @"345"],[[FKUser alloc] initWithName: @"zhu" pass: @"654"],[[FKUser alloc] initWithName: @"tang" pass: @"178"],[[FKUser alloc] initWithName: @"niu" pass: @"155"], nil];
        [array makeObjectsPerformSelector: @selector(say:) withObject: @"下午好，NSArray真强大!"];
        NSString *content = @"疯狂iOS讲义";
        [array enumerateObjectsAtIndexes:[NSIndexSet indexSetWithIndexesInRange:NSMakeRange(2, 2)] options:NSEnumerationReverse usingBlock:^(id obj,NSUInteger idx,BOOL *stop) {
            NSLog(@"正在处理第%ld个元素：%@",idx,obj);
            [obj say: content];
        }];
    }
    return 0;
}
