//
//  NSNumber.m
//  类别
//
//  Created by Eleven on 2023/5/6.
//

#import "NSNumber+fk.h"

@implementation NSNumber (fk)

- (NSNumber*) add: (double) num2 {
    return [NSNumber numberWithDouble:([self doubleValue] + num2)];
}
- (NSNumber*) substract:(double) num2 {
    return [NSNumber numberWithDouble:([self doubleValue] - num2)];
}
- (NSNumber*) multiply:(double) num2 {
    return [NSNumber numberWithDouble:([self doubleValue] * num2)];
}
- (NSNumber*) divide:(double) num2 {
    return [NSNumber numberWithDouble:([self doubleValue] / num2)];
}

@end
