//
//  main.m
//  日期与时间
//
//  Created by Eleven on 2023/5/9.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSDate *date1 = [NSDate date]; //获取当前时间
        NSLog(@"%@",date1);
        
        NSDate *date2 = [[NSDate alloc] initWithTimeIntervalSinceNow:3600 * 24];//获取从当前时间开始的后一天的时间
        NSLog(@"%@",date2);
        
        NSDate *date3 = [[NSDate alloc] initWithTimeIntervalSinceNow:-3 * 3600 * 24];//获取从现在开始三天前的时间
        NSLog(@"%@",date3);
        
        NSDate *date4 = [[NSDate alloc] initWithTimeIntervalSince1970:3600 * 24 * 366 * 20];//获取从1970年1月1日开始往后20年的时间
        NSLog(@"%@",date4);
        
        NSLocale *cn = [NSLocale currentLocale];//NSLocale代表一个语言，这里表示中文
        NSLog(@"%@",[date1 descriptionWithLocale: cn]);//用中文输出date1的时间
        
        NSDate *earlier = [date1 earlierDate: date2];
        NSLog(@"%@",earlier);//获取两个时间中较早的时间
        
        NSDate *later = [date1 laterDate: date2];
        NSLog(@"%@",later);//获取两个时间中较晚的时间
        
        //比较两个日期用：compare：方法，它包括如下三个值
        //三个值分别代表调用compare的日期位于被比较日期之前、相同、之后
        switch([date1 compare: date3]) {
            case NSOrderedAscending: NSLog(@"date1在date3之前");
                break;
            case NSOrderedSame: NSLog(@"date1和date3时间想相同");
                break;
            case NSOrderedDescending: NSLog(@"date1在date3时间之后");
                break;
        }
        
        NSLog(@"date1和date3的时间差是%g秒",[date1 timeIntervalSinceDate: date3]);//获取两个时间的时间差
        NSLog(@"date2与现在的时间差%g秒",[date2 timeIntervalSinceNow]);//获取指定时间和现在的时间差
        
        NSDateFormatter *dt = [NSDate dateWithTimeIntervalSince1970:3600 * 24 * 366 * 20];//格式化时间为从1970年1月1日开始的20年后的时间
        
        NSLocale *locales[] = {[[NSLocale alloc] initWithLocaleIdentifier:@"zh_CN"],[[NSLocale alloc] initWithLocaleIdentifier:@"en_US"]};//创建两个NSLocale分别表示中国、美国
        NSDateFormatter *df[8];//为上面两个NSLocale创建8个NSDateFormatter对象
        
        for (int i = 0; i < 2; i++) {
            df[i * 4] = [[NSDateFormatter alloc] init];
            [df[i * 4] setDateStyle:NSDateFormatterShortStyle];//设置NSDateFormatter的日期、时间风格
            [df[i * 4] setTimeStyle:NSDateFormatterShortStyle];
            [df[i * 4] setLocale: locales[i]];//设置NSDateFormatter的NSLocale
            
            df[i * 4 + 1] = [[NSDateFormatter alloc] init];
            [df[i * 4 + 1]setDateStyle:NSDateFormatterMediumStyle];//设置NSDateFormatter的日期、时间风格
            [df[i * 4 + 1]setDateStyle:NSDateFormatterMediumStyle];
            [df[i * 4 + 1] setLocale: locales[i]];//设置NSDateFormatter的NSLocale
            
            df[i * 4 + 2] = [[NSDateFormatter alloc] init];
            [df[i * 4 + 2] setDateStyle:NSDateFormatterLongStyle];//设置NSDateFormatter的日期、时间风格
            [df[i * 4 + 2] setTimeStyle:NSDateFormatterLongStyle];
            [df[i * 4 + 2] setLocale: locales[i]];//设置NSDateFormatter的NSLocale
            
            df[i * 4 + 3] = [[NSDateFormatter alloc] init];
            [df[i * 4 + 3] setDateStyle:NSDateFormatterFullStyle];//设置NSDateFormatter的日期、时间风格
            [df[i * 4 + 3] setTimeStyle:NSDateFormatterFullStyle];
            [df[i * 4 + 3] setLocale: locales[i]];//设置NSDateFormatter的NSLocale
        }
        for (int i = 0; i < 2; i++) {
            switch (i) {
                case 0: NSLog(@"-----中国日期格式------");
                    break;
                case 1: NSLog(@"-----美国日期格式------");
                    break;
            }
            NSLog(@"SHORT格式的日期格式：%@",[df[i * 4] stringFromDate: dt]);
            NSLog(@"MEDIUM格式的日期格式：%@",[df[i * 4 + 1] stringFromDate: dt]);
            NSLog(@"LONG格式的日期格式：%@",[df[i * 4 + 2] stringFromDate: dt]);
            NSLog(@"FULL格式的日期格式：%@",[df[i * 4 + 3] stringFromDate: dt]);
        }
        NSDateFormatter *df2 = [[NSDateFormatter alloc] init];
        [df2 setDateFormat:@"公元yyyy年MM月DD日HH时mm分"];//设置自定义格式器模版
        NSLog(@"%@",[df2 stringFromDate: dt]);//执行格式化
        NSString *dateStr = @"2013-03-02";
        NSDateFormatter *df3 = [[NSDateFormatter alloc] init];
        [df3 setDateFormat: @"yyyy-MM-DD"];//根据日期字符串的格式设置格式模版
        NSDate *date6 = [df3 dateFromString: dateStr];//将字符串转化为NSDate对象
        NSLog(@"%@",date6);
    }
    return 0;
}
