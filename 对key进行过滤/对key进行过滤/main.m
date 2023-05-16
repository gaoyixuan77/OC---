//
//  main.m
//  对key进行过滤
//
//  Created by Eleven on 2023/5/16.
//

#import <Foundation/Foundation.h>
#import "NSDictionary+print.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSDictionary *dict = [NSDictionary dictionaryWithObjectsAndKeys: [NSNumber numberWithInt: 89],@"Objective-C",[NSNumber numberWithInt: 69],@"Ruby",[NSNumber numberWithInt: 75],@"Python",[NSNumber numberWithInt: 109],@"Perl", nil];
        [dict print];
        NSSet *KeySet = [dict keysOfEntriesPassingTest: ^(id key,id value,BOOL *stop) {
            return (BOOL)([value intValue] > 80);
        }];
        NSLog(@"%@",KeySet);
    }
    return 0;
}
