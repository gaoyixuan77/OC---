//
//  main.m
//  isEqual
//
//  Created by Eleven on 2023/5/5.
//

#import <Foundation/Foundation.h>
#import "FKDog.h"
#import "FKItem.h"
#import "FKPerson.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        FKDog *p1 = [[FKDog alloc] init];
        NSLog(@"FkDog对象是否isEqual FKItem对象？%d",[p1 isEqual:[FKItem new]]);
        NSLog(@"FKDog对象是否isEqual NSString对象？%d",[p1 isEqual:[NSString stringWithFormat:@"hello"]]);
        FKPerson* s1 = [[FKPerson alloc] initWithName:@"晓美焰" idStr:@"12341234"];
        FKPerson* s2 = [[FKPerson alloc] initWithName:@"鹿目圆" idStr:@"12341234"];
        FKPerson* s3 = [[FKPerson alloc] initWithName:@"巴麻美" idStr:@"345676545678"];
        NSLog(@"s1和s2是否相等？%d",[s1 isEqual: s2]);
        NSLog(@"s2和s3是否相等？%d",[s2 isEqual: s3]);
    }
    return 0;
}
