//
//  Sakura.m
//  单例
//
//  Created by Eleven on 2023/5/24.
//

#import "Sakura.h"

@implementation Sakura

- (id) initWithName:(NSString *)aName {
    if (self = [super init]) {
        self.name = aName;
    }
    return self;
}

- (id) initWithAge:(int)aAge ard:(NSString *)aArd {
    if (self = [super init]) {
        self.age = aAge;
        self.ard = aArd;
    }
    return self;
}

@end
