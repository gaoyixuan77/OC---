//
//  main.m
//  NSSet
//
//  Created by Eleven on 2023/5/14.
//

#import <Foundation/Foundation.h>

//定义一个函数，可以把NSSet集合转化为字符串
//方便我们调试观察结果
NSString *NSCollectionToString(id collection) {
    NSMutableString *result = [NSMutableString stringWithString:@"["];
    for(id obj in collection) {
        [result appendString: [obj description]];
        [result appendString:@","];
    }
    NSUInteger len = [result length];//获取字符串长度
    [result deleteCharactersInRange:NSMakeRange(len - 1, 1)];//去除最后一个字符
    [result appendString:@"]"];
    return result;
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //初始化集合set1和set2
        //在初始化集合set1的时候故意传入两个相同的元素，可以看到结果是只保留了一个
        NSSet *set1 = [NSSet setWithObjects: @"晓美焰",@"晓美焰",@"鹿目圆",@"巴麻美",nil];
        NSLog(@"set1集合中元素个数为%ld",[set1 count]);
        NSLog(@"s1集合：%@",NSCollectionToString(set1));
        NSSet *set2 = [NSSet setWithObjects:@"巴麻美",@"美树沙耶香",@"佐仓杏子", nil];
        NSLog(@"s2集合：%@",NSCollectionToString(set2));
        
        //向集合中追加单个元素
        set1 = [set1 setByAddingObject:@"丘比"];
        NSLog(@"添加一个元素后：%@",NSCollectionToString(set1));
        
        //获取两个集合的并集
        NSSet *s = [set1 setByAddingObjectsFromSet:set2];
        NSLog(@"set1和set2的并集：%@",NSCollectionToString(s));
        
        //判断两个集合是否有交集
        BOOL b = [set1 intersectsSet: set2];
        NSLog(@"set1和set2是否有交集：%d",b);
        
        //判断一个集合是否是另一个集合的子集
        BOOL bo = [set2 isSubsetOfSet: set1];
        NSLog(@"set2是否是set1的子集：%d",bo);
        
        //判断集合中是否包含某个元素
        BOOL bb = [set1 containsObject: @"鹿目圆"];
        NSLog(@"set1是否包含鹿目圆：%d",bb);
        
        //随机从集合中取出一个元素，但是同时写两个下面的代码输出的结果是相同的
        NSLog(@"set1随机取出一个元素：%@",[set1 anyObject]);
        NSLog(@"set1随机取出一个元素：%@",[set1 anyObject]);
        
        //使用代码块对集合元素进行过滤
        NSSet *filteredSet = [set2 objectsPassingTest: ^(id obj,BOOL *stop) {
            return (BOOL)([obj length] > 3);
        }];
        NSLog(@"set2中的元素长度大于3的集合元素有：%@",NSCollectionToString(filteredSet));
    }
    return 0;
}
