//
//  ViewController.m
//  UIButton
//
//  Created by Eleven on 2023/5/20.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

static int num = 0;

//创建普通按钮函数
- (void) creatUIRectButton {
    //创建圆角按钮
    UIButton *btn = [UIButton buttonWithType: UIButtonTypeRoundedRect];
    UIButton *btn2 = [UIButton buttonWithType: UIButtonTypeRoundedRect];
    
    //设置button按钮的位置
    btn.frame = CGRectMake(100, 100, 150, 80);
    btn2.frame = CGRectMake(100, 200, 150, 50);
    
    //为按钮上设置文字内容
    //在第一个为按钮设置文字的代码中，传入的两个参数，第一个是字符串表示文字内容，第二个表示按钮状态
    //UIControlStateNormal代表按钮的正常状态
    [btn setTitle: @"按钮1" forState: UIControlStateNormal];
    [btn2 setTitle: @"按钮2" forState: UIControlStateNormal];
    //第二个为按钮设置文字的代码表示按钮按下之后的状态
    [btn setTitle: @"按钮1已按下" forState: UIControlStateHighlighted];
    [btn2 setTitle: @"按钮2已按下" forState: UIControlStateHighlighted];

    //为按钮设置背景颜色
    btn.backgroundColor = [UIColor yellowColor];
    btn2.backgroundColor = [UIColor greenColor];
    
    //为按钮的文字内容设置颜色的方法：
    [btn setTintColor: [UIColor redColor]];//titleColor存在的时候，它的优先级低于title，就无法显示它的颜色
    [btn setTitleColor: [UIColor blueColor] forState: UIControlStateNormal];
    [btn setTitleColor: [UIColor greenColor] forState: UIControlStateHighlighted];
    [btn2 setTitleColor: [UIColor redColor] forState: UIControlStateNormal];
    [btn2 setTitleColor: [UIColor blackColor] forState: UIControlStateHighlighted];
    
    //设置按钮文字的样式和大小，这里是系统默认样式，大小为24
    btn.titleLabel.font = [UIFont systemFontOfSize: 24];
    btn2.titleLabel.font = [UIFont systemFontOfSize: 24];
    
    //添加Button事件
    [btn addTarget: self action: @selector(press02:) forControlEvents: UIControlEventTouchUpInside];
    [btn2 addTarget: self action: @selector(press02:) forControlEvents: UIControlEventTouchUpInside];
    
    //为两个按钮的tag属性赋值，便于作为参数传入函数后判断
    btn.tag = 123;
    btn2.tag = 456;
    
    //添加到视图中并显示
    [self.view addSubview: btn];
    [self.view addSubview: btn2];
}

//创建一个可以创建图片的按钮
- (void) createImageButton {
    //创建一个自定义类型的button,注意是自定义类型，所以必须要是custom的
    UIButton *btnImage = [UIButton buttonWithType: UIButtonTypeCustom];
    
    //确定图片的位置
    btnImage.frame = CGRectMake(80, 250, 300, 300);
    
    //做两张图片的加载，btn01，btn02是图片名，要记得加上图片类型（jpg.这种）
    UIImage *icon01 = [UIImage imageNamed: @"btn01.jpg"];
    UIImage *icon02 = [UIImage imageNamed: @"btn02.jpg"];
    
    //为两张图片按钮的状态设置不同的图片
    //传入的第一个参数是显示的图片对象，第二个参数是控件的状态
    //此处正常状态是图片btn01，按下状态是btn02
    [btnImage setImage: icon01 forState: UIControlStateNormal];
    [btnImage setImage: icon02 forState: UIControlStateHighlighted];
    
    //添加到视图中显示
    [self.view addSubview: btnImage];
}

//Button事件：-----------------------------
- (void) creatBtn {
    //创建一个圆角按钮
    UIButton *btn2 = [UIButton buttonWithType: UIButtonTypeRoundedRect];
    
    btn2.frame = CGRectMake(100, 600, 300, 100);
    
    [btn2 setTitle: @"❤️喜多川海梦❤️" forState: UIControlStateNormal];
    
    btn2.backgroundColor = [UIColor systemPinkColor];
    [btn2 setTitleShadowColor: [UIColor redColor] forState: UIControlStateNormal];
    [btn2 setTitleShadowOffset: CGSizeMake(4, 4)];
    [btn2 setTitleColor: [UIColor orangeColor] forState: UIControlStateNormal];
    [btn2 setTitleColor: [UIColor whiteColor] forState: UIControlStateHighlighted];
    btn2.titleLabel.font = [UIFont systemFontOfSize: 36];
    
    //向按钮添加事件：传入了三个参数：
    //第一个参数
    //第二个参数传入一个函数对象，当按钮满足第三个参数的条件的时候，调用函数
    //第三个参数是事件处理函数，此处的UIControlEventTouchUpInside是指当手指离开屏幕时并且手指的离开位置在屏幕范围内触发事件函数，一般这种按钮对于用户是按上了有反悔的机会
    //还有一个方法是叫UIControlEventTouchDown，它是只要手指触碰到了按钮就直接触发函数
    //还有一个方法是叫UIControlEventTouchOutside，和indide相反，它是只有手指按下并移动到按钮外才会触发
    [btn2 addTarget: self action: @selector(pressBtn) forControlEvents: UIControlEventTouchUpInside];
    
    [self.view addSubview: btn2];
}

//通过传入的参数对两个按钮的结果做区分
- (void) press02: (UIButton*) btn {
    if (btn.tag == 123) {
        NSLog(@"按下了按钮1");
    }
    if (btn.tag == 456) {
        NSLog(@"按下了按钮2");
    }
}

- (void) pressBtn {
    if (num < 10) {
        NSLog(@"你摸了摸海梦的头～");
        num++;
    } else {
        NSLog(@"海梦不想被摸摸头了喔～");
    }
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self creatUIRectButton];
    [self createImageButton];
    [self creatBtn];
}


@end
