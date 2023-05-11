//
//  FKCar.h
//  扩展
//
//  Created by Eleven on 2023/5/7.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface FKCar : NSObject

@property (nonatomic,copy) NSString *brand;
@property (nonatomic,copy) NSString *model;

- (void) drive;

@end

NS_ASSUME_NONNULL_END
