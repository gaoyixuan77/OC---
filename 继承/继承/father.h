//
//  father.h
//  继承
//
//  Created by Eleven on 2023/5/7.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface father : NSObject

@property (nonatomic,copy) NSString *str;
@property (nonatomic,assign) int num;

- (void) test1;
- (void) test2;

@end

NS_ASSUME_NONNULL_END
