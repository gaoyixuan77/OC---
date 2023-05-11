//
//  son.h
//  继承
//
//  Created by Eleven on 2023/5/7.
//

#import "father.h"

NS_ASSUME_NONNULL_BEGIN

@interface son : father

@property (nonatomic) NSString *str2;

- (void) test2;

@end

NS_ASSUME_NONNULL_END
