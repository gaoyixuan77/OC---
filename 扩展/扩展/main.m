//
//  main.m
//  扩展
//
//  Created by Eleven on 2023/5/7.
//

#import <Foundation/Foundation.h>
#import "FKCar+drive.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        FKCar *car = [[FKCar alloc] init];
        car.brand = @"宝马";
        car.model = @"X5";
        car.color = @"黑色";
        [car drive];
        [car drive: @"孙悟空"];
    }
    return 0;
}
