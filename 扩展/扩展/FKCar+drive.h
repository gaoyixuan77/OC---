//
//  NSObject+FKCar.h
//  扩展
//
//  Created by Eleven on 2023/5/7.
//

#import <Foundation/Foundation.h>
#import "FKCar.h"

NS_ASSUME_NONNULL_BEGIN

@interface FKCar ()

@property (nonatomic,copy) NSString *color;
- (void) drive: (NSString*) owner;

@end

NS_ASSUME_NONNULL_END
