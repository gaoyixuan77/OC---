//
//  xxx.m
//  深复制
//
//  Created by Eleven on 2023/5/17.
//

#import "xxx.h"

@implementation xxx

@synthesize name;
@synthesize age;

- (id) initWithName:(NSMutableString *)aName age:(int)aAge {
    if (self = [super init]) {
        self.name = aName;
        self.age = aAge;
    }
    return self;
}

- (id)mutableCopyWithZone:(nullable NSZone *)zone {
    xxx *x = [[[self class] allocWithZone: zone] init];
    x.name = self.name;
    x.age = self.age;
    return x;
}

@end
