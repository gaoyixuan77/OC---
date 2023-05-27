//
//  xxx.h
//  深复制
//
//  Created by Eleven on 2023/5/17.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface xxx : NSObject<NSMutableCopying>

@property (nonatomic,strong) NSMutableString *name;
@property (nonatomic,assign) int age;

- (id) initWithName: (NSMutableString*) aName age: (int) aAge;

@end

NS_ASSUME_NONNULL_END
