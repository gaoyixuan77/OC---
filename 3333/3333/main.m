//
//  main.m
//  3333
//
//  Created by Eleven on 2023/5/4.
//

#import <Foundation/Foundation.h>

@interface FKPerson : NSObject //接口部分

@property (nonatomic,copy) NSString* brand;
@property (nonatomic,copy) NSString* model;
@property (nonatomic,copy) NSString* color;

- (id) initWithBrand: (NSString*) brand model: (NSString*) model;
- (id) initWithBrand: (NSString*) brand model: (NSString*) model color: (NSString*) color;

@end

@implementation FKPerson //实现部分

@synthesize brand = _brand;
@synthesize model = _model;
@synthesize color = _color;

//重写init方法的自定义初始化
- (id) init {
    if(self = [super init]) {
        self.brand = @"111";
        self.model = @"222";
        self.color = @"333";
    }
    return self;
}

//实现”initWithBrand: model: “方法的初始化
- (id) initWithBrand:(NSString *)brand model:(NSString *)model {
    if(self = [super init]) {
        self.brand = brand;
        self.model = model;
        self.color = @"333";
    }
    return self;
}

//实现”initWithBrand: model: color: “方法的初始化
- (id) initWithBrand:(NSString *)brand model:(NSString *)model color:(NSString *)color {
    if(self = [super init]) {
        self.brand = brand;
        self.model = model;
        self.color = color;
    }
    return self;
}

@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        FKPerson *p1 = [[FKPerson alloc] init];
        FKPerson *p2 = [[FKPerson alloc] initWithBrand:@"111" model:@"222"];
        FKPerson *p3 = [[FKPerson alloc] initWithBrand:@"111" model:@"222" color:@"333"];
        NSLog(@"%@ %@ %@",p1.brand,p1.model,p1.color);
        NSLog(@"%@ %@ %@",p2.brand,p2.model,p2.color);
        NSLog(@"%@ %@ %@",p3.brand,p3.model,p3.color);
    }
    return 0;
}
