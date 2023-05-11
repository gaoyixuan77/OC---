//
//  FKCar.m
//  扩展
//
//  Created by Eleven on 2023/5/7.
//

#import "FKCar.h"
#import "FKCar+drive.h"

@implementation FKCar

@synthesize brand;
@synthesize model;
@synthesize color;

- (void) drive {
    NSLog(@"汽车正在路上跑");
}
- (void) drive: (NSString*) owner {
    NSLog(@"%@正驾驶着%@汽车在路上跑",owner,self);
}
- (NSString*) description {
    return [NSString stringWithFormat:@"<FK[brand = %@,model = %@,color = %@",self.brand,self.model,self.color];
}

@end
