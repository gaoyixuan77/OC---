//
//  FKOutput.h
//  正式协议
//
//  Created by Eleven on 2023/5/7.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol FKOutput

- (void) output;
- (void) addData(String msg);

@end

NS_ASSUME_NONNULL_END
