//
//  FKPerson.h
//  isEqual
//
//  Created by Eleven on 2023/5/5.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface FKPerson : NSObject

@property (nonatomic,copy) NSString* name;
@property (nonatomic,copy) NSString* idStr;

- (id) initWithName: (NSString*) name idStr: (NSString*) idStr;

@end

NS_ASSUME_NONNULL_END
