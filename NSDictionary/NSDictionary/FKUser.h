//
//  FKUser.h
//  NSDictionary
//
//  Created by Eleven on 2023/5/15.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface FKUser : NSObject

@property (nonatomic,copy) NSString *name;
@property (nonatomic,copy) NSString *pass;

- (id) initWithName: (NSString*) aName pass: (NSString*) aPass;//重写初始化方法
- (void) say: (NSString*) content;//定义一个say方法

@end

NS_ASSUME_NONNULL_END
