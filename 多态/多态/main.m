//
//  main.m
//  多态
//
//  Created by Eleven on 2023/5/4.
//

#import <Foundation/Foundation.h>
#import "FKPerson.h"
#import "Student.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        FKPerson *p1 = [[FKPerson alloc] init];
        Student *p2 = [[Student alloc] init];
        [p1 word:@"欣欣向荣"];
        [p2 word:@"欣欣向荣"];
    }
    return 0;
}
