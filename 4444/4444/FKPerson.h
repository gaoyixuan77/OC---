//
//  FKPerson.h
//  4444
//
//  Created by Eleven on 2023/5/4.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface FKPerson : NSObject {
    int a;
    NSString* name;
}

+ (id) instance;

@end

NS_ASSUME_NONNULL_END
