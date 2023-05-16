//
//  FKDog.h
//  浅复制
//
//  Created by Eleven on 2023/5/10.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface FKDog：NSObject<NSCopying>

@property (nonatomic,strong) NSMutableString *name;
@property (nonatomic,assign) int age;

@end

NS_ASSUME_NONNULL_END
