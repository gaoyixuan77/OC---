//
//  main.m
//  自定义类的key
//
//  Created by Eleven on 2023/5/16.
//

#import <Foundation/Foundation.h>
#import "NSDictionary+print.h"
#import "FKUser.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        FKUser *u1 = [[FKUser alloc] initWithName: @"晓美焰" pass: @"345"];
        NSDictionary *dict = [NSDictionary dictionaryWithObjectsAndKeys: @"one",[[FKUser alloc] initWithName: @"鹿目圆" pass: @"123"],@"two",u1,@"three",[[FKUser alloc] initWithName: @"鹿目圆" pass: @"123"],@"four",[[FKUser alloc] initWithName: @"巴麻美" pass: @"178"],@"five",[[FKUser alloc] initWithName: @"美树沙耶香" pass: @"155"], nil];
        u1.pass = nil;
        [dict print];
    }
    return 0;
}
