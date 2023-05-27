//
//  Asina.h
//  单例
//
//  Created by Eleven on 2023/5/24.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Asina : NSObject {
    int a;
    NSString *b;
}

+ (id) instance;
+ (id) allocWithZone:(struct _NSZone *)zone;
@end

NS_ASSUME_NONNULL_END
