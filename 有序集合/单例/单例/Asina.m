//
//  Asina.m
//  单例
//
//  Created by Eleven on 2023/5/24.
//

#import "Asina.h"

static id _instance = nil;

@implementation Asina

+ (id) instance {
    return [[self alloc] init];
}

+ (id) allocWithZone:(struct _NSZone *)zone {
    if (!_instance) {
        _instance = [super allocWithZone:zone];
    }
    return _instance;
}


@end
