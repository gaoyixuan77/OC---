//
//  ViewController.m
//  UITextField
//
//  Created by Eleven on 2023/5/22.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize textField = _textField;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //创建textField对象
    self.textField = [[UITextField alloc] init];
    self.textField.frame = CGRectMake(100, 200, 200, 50);
    //为输入框添加内容文字
    self.textField.text = @"用户名";
    //为输入框的文字设置风格和大小
    self.textField.font = [UIFont systemFontOfSize: 17];
    //设置字体颜色
    self.textField.textColor = [UIColor blueColor];
    
    //设置输入边框的风格
    //圆角风格(默认）
    self.textField.borderStyle = UITextBorderStyleRoundedRect;
    //线框风格
    //self.textField.borderStyle = UITextBorderStyleLine;
    //bezel线框
    //self.textField.borderStyle = UITextBorderStyleBezel;
    //无边框风格
    //self.textField.borderStyle = UITextBorderStyleNone;
    
    //设置键盘风格,在此处测试的时候虚拟机的手机键盘可能跳不出来，只需要直接cmd+K呼出，或者先点虚拟机然后在上方的I/O选择keyboard然后再选择第三个即可
    //默认风格
    self.textField.keyboardType = UIKeyboardTypeDefault;
    //字母和数字组合风格
    //self.textField.keyboardType = UIKeyboardTypePhonePad;
    //纯数字风格
    //self.textField.keyboardType = UIKeyboardTypeNumberPad;
    
    //当输入框内没有文字的时候，提示这条信息
    //默认半透明浅灰色提示
    self.textField.placeholder = @"请输入用户名......";
    
    //是否作为密码输入
    //当传入YES的时候，即作为密码处理，使用圆点加密；传入NO则正常输入
    self.textField.secureTextEntry = NO;
    
    [self.view addSubview: _textField];
    
}

//回收键盘（点击屏幕空白处调用）
- (void) touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    //使虚拟键盘回收,不再作为第一消息响应者
    [self.textField resignFirstResponder];
}

//UITextFieldDelegate协议里的一些函数--------------------------------------------------------------------------------------------------------------

//在手机键盘弹出的一瞬间开始调用，在这里可以为开始输入时添加动作
- (void) textFieldDidBeginEditing:(UITextField *)textField {
    NSLog(@"开始编辑了");
}

//在手机键盘收回的一瞬间开始调用，在这里可以为结束输入时添加动作
- (void) textFieldDidEndEditing:(UITextField *)textField {
    NSLog(@"编辑输入结束了");
}

//表示是否可以进行输入，返回值为YES的时候可以输入，反之不能输入，默认为YES
- (BOOL) textFieldShouldBeginEditing:(UITextField *)textField {
    return YES;
}

//表示是否可以结束输入，返回值为YES的时候可以结束，反之不能结束，默认为YES
- (BOOL) textFieldShouldEndEditing:(UITextField *)textField {
    return YES;
}

@end
