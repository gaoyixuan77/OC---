//
//  FKUser.m
//  对集合元素的整体调用方法
//
//  Created by Eleven on 2023/5/14.
//

#import "FKUser.h"

@implementation FKUser

@synthesize name;
@synthesize pass;

- (id) initWithName:(NSString *)aName pass:(NSString *)aPass {
    if (self = [super init]) {
        name = aName;
        pass = aPass;
    }
    return self;
}
- (void) say: (NSString*) content {
    NSLog(@"%@说：%@",self.name,content);
}
- (BOOL) isEqual:(id)other {
    if (self == other) {
        return YES;
    }
    if ([other class] == FKUser.class) {
        FKUser *target = (FKUser*)other;
        return [self.name isEqualToString: target.name] && [self.pass isEqualToString: target.pass];
    }
    return NO;
}
- (NSString*) description {
    return [NSString stringWithFormat:@"<FKUser[name = %@,pass = %@>",self.name,self.pass];
}

@end
