//
//  FKPerson.h
//  类别
//
//  Created by Eleven on 2023/5/6.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface FKPerson : NSObject

@property (nonatomic,copy) NSString* name;
@property (nonatomic,assign) int age;

- (void) test1;

@end

NS_ASSUME_NONNULL_END
