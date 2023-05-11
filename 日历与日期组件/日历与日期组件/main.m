//
//  main.m
//  日历与日期组件
//
//  Created by Eleven on 2023/5/10.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSCalendar *gregorian = [[NSCalendar alloc] initWithCalendarIdentifier: NSGregorianCalendar];//获取代表公历的Calendar对象
        NSDate *dt = [NSDate date];//获取当前日期
        
        unsigned unitFlags = NSYearCalendarUnit | NSMonthCalendarUnit | NSDayCalendarUnit | NSHourCalendarUnit | NSMinuteCalendarUnit | NSSecondCalendarUnit | NSWeekdayOrdinalCalendarUnit;//定义一个时间字段的旗标，指定将会获取指定年、月、日、时、分、秒的信息
        NSDateComponents *comp = [gregorian components: unitFlags fromDate: dt];//获取不同时间字段的信息
        
        //获取各时间字段的数值
        NSLog(@"现在是%ld年",comp.year);
        NSLog(@"现在是%ld月",comp.month);
        NSLog(@"现在是%ld日",comp.day);
        NSLog(@"现在是%ld时",comp.hour);
        NSLog(@"现在是%ld分",comp.minute);
        NSLog(@"现在是%ld秒",comp.second);
        NSLog(@"现在是星期%ld",comp.weekday);
        
        NSDateComponents *comp2 = [[NSDateComponents alloc] init];//再次创建一个NSDateComponents对象
        
        //设置各时间字段的数值
        comp2.year = 2023;
        comp2.month = 5;
        comp2.day = 10;
        comp2.hour = 18;
        comp2.minute = 15;
        
        //通过NSDateComponents所包含的时间字段的数值来恢复NSDate对象
        NSDate *date = [gregorian dateFromComponents: comp2];
        NSLog(@"获取的日期为：%@",date);
    }
    return 0;
}
