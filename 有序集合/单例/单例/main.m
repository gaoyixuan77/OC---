//
//  main.m
//  单例
//
//  Created by Eleven on 2023/5/24.
//

#import <Foundation/Foundation.h>
#import "Asina.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Asina *a1 = [Asina instance];
        Asina *a2 = [[Asina alloc] init];
        Asina *a3 = [[Asina alloc] init];
        
        NSLog(@"%d", a1 == a2);
        NSLog(@"%d", a1 == a3);
    }
    return 0;
}
