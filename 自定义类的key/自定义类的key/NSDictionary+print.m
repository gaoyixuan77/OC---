//
//  NSDictionary+print.m
//  自定义类的key
//
//  Created by Eleven on 2023/5/16.
//

#import "NSDictionary+print.h"
#import "FKUser.h"

@implementation NSDictionary (print)

- (void) print {
    NSMutableString *result = [NSMutableString stringWithString: @"{"];
    for (id key in self) {
        [result appendString: [key description]];
        [result appendString: @"="];
        [result appendString: [self[key] description]];
        [result appendString: @","];
    }
    NSUInteger len = [result length];
    [result deleteCharactersInRange: NSMakeRange(len - 1, 1)];
    NSLog(@"%@",result);
}

@end
