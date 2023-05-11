//
//  FKPerson.m
//  4444
//
//  Created by Eleven on 2023/5/4.
//

#import "FKPerson.h"

static id instance = nil;

@implementation FKPerson

+ (id) instance {
    if(!instance) {
        instance = [[super alloc] init];
    }
    return instance;
}

@end
