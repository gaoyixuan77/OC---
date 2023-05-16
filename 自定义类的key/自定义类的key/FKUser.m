//
//  FKUser.m
//  自定义类的key
//
//  Created by Eleven on 2023/5/16.
//

#import "FKUser.h"

@implementation FKUser

@synthesize name;
@synthesize pass;

- (id) initWithName:(NSString *)aName pass:(NSString *)aPass {
    if(self = [super init]) {
        self.name = aName;
        self.pass = aPass;
    }
    return self;
}
- (void) say:(NSString *)content {
    NSLog(@"%@说:%@",self.name,content);
}
- (BOOL) isEqual: (id)object {
    if (self == object) {
        return YES;
    }
    if ([object class] == FKUser.class) {
        FKUser *target = (FKUser*)object;
        return [self.name isEqualToString: target.name] && [self.pass isEqualToString: target.pass];
    }
    return NO;
}
- (NSString*) description {
    return [NSString stringWithFormat: @"<FKUSer[name = %@,pass = %@]>",self.name,self.pass];
}
- (id) copyWithZone:(NSZone *)zone {
    NSLog(@"-----正在复制-----");
    FKUser *newUser = [[[self class] allocWithZone: zone] init];
    newUser.name = self.name;
    newUser.pass = self.pass;
    return newUser;
}

//重写hash方法，重写该方法的比较标准是：
//如果两个FKUser的name、pass相等，两个FKUser的Hash方法返回值相等
- (NSUInteger) hash {
    NSUInteger nameHash = name == nil ? 0 : [name hash];
    NSUInteger passHash = pass == nil ? 0 : [pass hash];
    return nameHash * 31 + passHash;
}

@end
