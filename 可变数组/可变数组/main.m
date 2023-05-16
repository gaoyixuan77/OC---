//
//  main.m
//  可变数组
//
//  Created by Eleven on 2023/5/14.
//

#import <Foundation/Foundation.h>

//定义一个函数，该函数用于把NSArray集合转换为字符串
NSString *NSCollectionToString(NSArray *array) {
    NSMutableString *result = [NSMutableString stringWithString:@"["];
    for (id obj in array) {
        [result appendString: [obj description]];
        [result appendString:@","];
    }
    NSUInteger len = [result length];//获取字符串长度
    [result deleteCharactersInRange:NSMakeRange(len - 1, 1)];//去掉最后一个字符
    [result appendString:@"]"];
    return result;
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //初始化NSMutableArray集合
        NSMutableArray *array = [NSMutableArray arrayWithObjects:@"晓美焰",@"鹿目圆",@"巴麻美",@"美树沙耶香", nil];
        
        //向集合最后追加元素
        [array addObject:@"佐仓杏子"];
        NSLog(@"追加一个元素后:%@",NSCollectionToString(array));
        [array addObjectsFromArray:[NSArray arrayWithObjects:@"丘比",@"仁美", nil]];
        NSLog(@"最后追加两个元素后：%@",NSCollectionToString(array));
        
        //向集合指定位置插入元素
        [array insertObject:@"蓓蓓" atIndex:2];
        NSLog(@"在索引为2的位置插入一个元素后：%@",NSCollectionToString(array));
        [array insertObjects:[NSArray arrayWithObjects:@"吼拉姆",@"馒头卡", nil] atIndexes:[NSIndexSet indexSetWithIndexesInRange:NSMakeRange(3, 2)]];
        NSLog(@"插入多个元素后：%@",NSCollectionToString(array));
        
        //删除集合中指定位置的元素
        [array removeLastObject];
        NSLog(@"删除最后一个元素后：%@",NSCollectionToString(array));
        [array removeObjectAtIndex:5];
        NSLog(@"删除索引为5的元素后：%@",NSCollectionToString(array));
        [array removeObjectsInRange:NSMakeRange(2, 3)];
        NSLog(@"删除索引为2-5的元素后：%@",NSCollectionToString(array));
        
        //替换集合中指定位置的元素
        [array replaceObjectAtIndex:2 withObject:@"Q币"];
        NSLog(@"替换索引为2处的元素后：%@",NSCollectionToString(array));
    }
    return 0;
}
