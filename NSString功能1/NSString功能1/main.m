//
//  main.m
//  NSString功能
//
//  Created by Eleven on 2023/5/9.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        unichar data[6] = {97,98,99,100,101,102};
        NSString *str1 = [[NSString alloc] initWithCharacters: data length: 6];
        NSLog(@"%@",str1);
        char *cstr = "Hello,iOS!";
        NSString *str2 = [NSString stringWithUTF8String: cstr];
        NSLog(@"%@",str2);
        [str2 writeToFile: @"myFile.txt" atomically:YES encoding:NSUTF8StringEncoding error: nil];
        NSString *str3 = [NSString stringWithContentsOfFile:@"NSStringTest.m"encoding:NSUTF8StringEncoding error:nil];
        NSLog(@"%@",str3);
    }
    return 0;
}
