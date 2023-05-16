//
//  main.m
//  NSMutableDictionary
//
//  Created by Eleven on 2023/5/16.
//

#import <Foundation/Foundation.h>
#import "NSDictionary+print.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSMutableDictionary *dict = [NSMutableDictionary dictionaryWithObjectsAndKeys: [NSNumber numberWithInt: 89],@"疯狂iOS讲义", nil];
        
        //使用下标法设置key-value对，由于NSDictionary中存在该key
        //所以此处设置的value会覆盖之前的value
        dict[@"疯狂iOS讲义"] = [NSNumber numberWithInt: 99];
        [dict print];
        NSLog(@"--再次添加key-value对--");
        dict[@"疯狂XML讲义"] = [NSNumber numberWithInt: 69];
        dict[@"疯狂Android讲义"] = [NSNumber numberWithInt: 69];
        [dict print];
        NSDictionary *dict2 = [NSDictionary dictionaryWithObjectsAndKeys: [NSNumber numberWithInt: 79],@"疯狂Ajax讲义",[NSNumber numberWithInt: 89],@"Struts 2.x权威指南", nil];
        
        //将另一个NSDictionary中的key-value对添加到该集合中
        [dict addEntriesFromDictionary: dict2];
        [dict print];
        //根据key来删除key-value对
        [dict removeObjectForKey: @"Struts 2.x权威指南"];
        [dict print];
    }
    return 0;
}
