//
//  FKDog.m
//  浅复制
//
//  Created by Eleven on 2023/5/10.
//

#import "FKDog.h"

@implementation FKDog

@synthesize name;
@synthesize age;
- (id) stringWithZone: (NSZone*) zone {
    FKDog *dog = [[[self class] allocWithZone: zone] init];
    dog.name = self.name;
    dog.age = self.age;
    return dog;
}

@end
