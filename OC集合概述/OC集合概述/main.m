//
//  main.m
//  OC集合概述
//
//  Created by Eleven on 2023/5/11.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //NSArray集合
        NSArray *arr = [NSArray arrayWithObjects:@"疯狂iOS讲义",@"疯狂111",@"疯狂222",@"疯狂333",@"疯狂444", nil];
        NSLog(@"第一个元素是：%@",[arr objectAtIndex: 0]);
        NSLog(@"索引为1的元素：%@",[arr objectAtIndex: 1]);
        NSLog(@"最后一个元素：%@",[arr lastObject]);
        
        //获取索引从2到5的元素组成的新集合
        NSArray *arr1 = [arr objectsAtIndexes: [NSIndexSet indexSetWithIndexesInRange:NSMakeRange(2, 3)]];
        NSLog(@"%@",arr1);
        
        //获取元素在集合中的位置
        NSLog(@"疯狂111的位置为：%ld",[arr indexOfObject: @"疯狂111"]);
        //获取元素在集合指定范围中的位置
        NSLog(@"疯狂111的位置为：%ld",[arr indexOfObject: @"疯狂111" inRange:NSMakeRange(2, 3)]);
        
        //向数组的末尾追加元素
        //原arr的本身没有变，只是将新返回的NSArray赋给arr
        arr = [arr arrayByAddingObject:@"晓美焰"];//追加单个元素
        arr = [arr arrayByAddingObjectsFromArray:[NSArray arrayWithObjects: @"鹿目圆",@"美树沙耶香", nil]];//将另一个数组中所有元素追加到原数组后面
        for (int i = 0; i < arr.count; i++) {
            NSLog(@"%@",[arr objectAtIndex: i]);//也可简写为：NSLog(@"%@",[array objectAtIndex: i]);
        }
        //获取array数组中索引为5到8的所有元素
        NSArray *arr2 = [arr subarrayWithRange: NSMakeRange(5, 3)];
        //将NSArray集合的元素写入文件
        [arr2 writeToFile: @"myFile.txt" atomically: YES];
        
        for (int j = 0; j < 8; j++) { //也可以用下标法来访问元素
            NSLog(@"%@",arr[j]);
        }
        
    }
    return 0;
}
