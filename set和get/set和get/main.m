//
//  main.m
//  set和get
//
//  Created by Eleven on 2023/5/5.
//

#import <Foundation/Foundation.h>
#import "FKPerson.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        FKPerson *p1 = [[FKPerson alloc] init];
        [p1 sss:@"xuan"];
        [p1 setAge:19];
        
        NSLog(@"%@",[p1 ggg]);
        NSLog(@"%d",[p1 age]);
    }
    return 0;
}
