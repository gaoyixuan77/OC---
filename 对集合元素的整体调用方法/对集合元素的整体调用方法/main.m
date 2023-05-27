//
//  main.m
//  对集合元素的整体调用方法
//
//  Created by Eleven on 2023/5/14.
//

#import <Foundation/Foundation.h>
#import "FKUser.h"

NSString *NSCollectionToString (id array) {
    NSMutableString *result = [NSMutableString stringWithString: @"["];
    for (id obj in array) {
        [result appendString: [obj description]];
         [result appendString: @","];
    }
    NSUInteger len = [result length];
    [result deleteCharactersInRange: NSMakeRange(len - 1, 1)];
    [result appendString: @"]"];
    return result;
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSSet *set = [NSSet setWithObjects: [[FKUser alloc] initWithName: @"sun" pass: @"123"], [[FKUser alloc] initWithName: @"bai" pass: @"345"], [[FKUser alloc] initWithName: @"sun" pass: @"123"], [[FKUser alloc] initWithName: @"tang" pass: @"178"], [[FKUser alloc] initWithName: @"niu" pass: @"155"], nil];
        NSLog(@"set集合元素的个数：%ld", [set count]);
        NSLog(@"%@", NSCollectionToString(set));
    }
    return 0;
}
