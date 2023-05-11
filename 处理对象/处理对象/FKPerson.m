//
//  FKPerson.m
//  处理对象
//
//  Created by Eleven on 2023/5/4.
//

#import "FKPerson.h"

@implementation FKPerson

@synthesize name;
@synthesize age;

- (id) initWithName:(NSString *)name Age:(int)age {
    if(self = [super init]) {
        self.name = name;
        self.age = age;
    }
    return self;
}
- (NSString*) description {
    //stringWithFormat可生成格式化字符串
    return [NSString stringWithFormat:@"<FKPerson [name = %@,age = %d]>",self.name,self.age];
}

@end
