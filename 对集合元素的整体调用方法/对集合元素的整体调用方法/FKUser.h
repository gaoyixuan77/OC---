//
//  FKUser.h
//  对集合元素的整体调用方法
//
//  Created by Eleven on 2023/5/14.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface FKUser : NSObject

@property (nonatomic,copy) NSString *name;
@property (nonatomic,copy) NSString *pass;

- (id) initWithName: (NSString*) aName pass: (NSString*) aPass;
- (void) say: (NSString*) content;

@end

NS_ASSUME_NONNULL_END
