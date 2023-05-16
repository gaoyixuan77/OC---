//
//  FKUser.h
//  自定义类的key
//
//  Created by Eleven on 2023/5/16.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface FKUser : NSObject<NSCopying>

@property (nonatomic,copy) NSString *name;
@property (nonatomic,copy) NSString *pass;

- (id) initWithName: (NSString*) aName pass: (NSString*) aPass;
- (void) say: (NSString*) content;

@end

NS_ASSUME_NONNULL_END
