//
//  main.m
//  处理对象
//
//  Created by Eleven on 2023/5/4.
//

#import <Foundation/Foundation.h>
#import "FKPerson.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        FKPerson *p1 = [[FKPerson alloc] initWithName:@"xuan" Age:19];
        NSLog(@"%@,%d",p1,p1);
        NSLog(@"%@,%d",p1.name,p1.age);
    }
    return 0;
}
