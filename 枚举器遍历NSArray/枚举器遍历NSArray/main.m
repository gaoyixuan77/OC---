//
//  main.m
//  枚举器遍历NSArray
//
//  Created by Eleven on 2023/5/14.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSArray *array = [NSArray arrayWithObjects: @"晓美焰",@"鹿目圆",@"巴麻美",@"美树沙耶香",nil];
        NSEnumerator *en = [array objectEnumerator];
        id object;
        while (object = [en nextObject]) {
            NSLog(@"%@",object);
        }
        NSLog(@"-----下面是逆序遍历------");
        en = [array reverseObjectEnumerator];
        while (object = [en nextObject]) {
            NSLog(@"%@",object);
        }
    }
    return 0;
}
