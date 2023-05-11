//
//  FKPerson.h
//  set和get
//
//  Created by Eleven on 2023/5/5.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface FKPerson : NSObject

@property (nonatomic,copy,setter = sss:,getter = ggg) NSString* name;
@property (nonatomic,assign) int age;

@end

NS_ASSUME_NONNULL_END
