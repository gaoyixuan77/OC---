//
//  FKPerson.h
//  处理对象
//
//  Created by Eleven on 2023/5/4.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface FKPerson : NSObject

@property (nonatomic,copy) NSString* name;
@property (nonatomic,assign) int age;

- (id) initWithName: (NSString*)name Age: (int)age;
- (NSString*) description;

@end

NS_ASSUME_NONNULL_END
