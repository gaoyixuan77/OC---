//
//  NSNumber.h
//  类别
//
//  Created by Eleven on 2023/5/6.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSNumber (fk)

- (NSNumber*) add: (double) num2;
- (NSNumber*) substract: (double) num2;
- (NSNumber*) multiply: (double) num2;
- (NSNumber*) divide: (double) num2;

@end

NS_ASSUME_NONNULL_END
