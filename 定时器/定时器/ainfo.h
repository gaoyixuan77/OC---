//
//  ainfo.h
//  定时器
//
//  Created by Eleven on 2023/5/10.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ainfo : NSObject

@property (nonatomic,assign) int count;

- (void) appWillFinish;
- (void) info: (NSTimer*)timer;

@end

NS_ASSUME_NONNULL_END
