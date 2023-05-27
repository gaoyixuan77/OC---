//
//  Sakura.h
//  单例
//
//  Created by Eleven on 2023/5/24.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Sakura : NSObject

@property (nonatomic, copy) NSString *name;
@property (nonatomic, assign) int age;
@property (nonatomic,copy) NSString *ard;

- (id) initWithName: (NSString*) aName;
- (id) initWithAge: (int) aAge ard: (NSString*) aArd;

@end

NS_ASSUME_NONNULL_END
