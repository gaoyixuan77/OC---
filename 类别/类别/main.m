//
//  main.m
//  类别
//
//  Created by Eleven on 2023/5/6.
//

#import <Foundation/Foundation.h>
#import "NSNumber+fk.h"
#import "FKPerson+test2.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSNumber *myNum = [NSNumber numberWithInt:3];
        NSNumber *add = [myNum add:2.4];
        NSLog(@"%@",add);
        NSNumber *substract = [myNum substract:2.4];
        NSLog(@"%@",substract);
        NSNumber *multiply = [myNum multiply:2.4];
        NSLog(@"%@",multiply);
        NSNumber *divide = [myNum divide:2.4];
        NSLog(@"%@",divide);
        
        FKPerson *myTest = [[FKPerson alloc] init];
        [myTest dda];
    }
    return 0;
}
