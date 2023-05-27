//
//  ViewController.m
//  登陆界面案例
//
//  Created by Eleven on 2023/5/23.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize bUserName = _bUesrName;
@synthesize bUserKey = _bUserKey;
@synthesize userName = _userName;
@synthesize userKey = _userKey;
@synthesize login = _login;
@synthesize register1 = _register;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor orangeColor];
    
    _bUesrName = [[UILabel alloc] initWithFrame: CGRectMake(50, 100, 300, 70)];
    _bUesrName.text = @"用户名：";
    [self.view addSubview: _bUesrName];
    
    _userName = [[UITextField alloc] initWithFrame: CGRectMake(50, 150, 300, 50)];
    _userName.borderStyle = UITextBorderStyleLine;
    _userName.placeholder = @"请输入用户名......";
    [self.view addSubview: _userName];
    
    _bUserKey = [[UILabel alloc] initWithFrame: CGRectMake(50, 200, 300, 70)];
    _bUserKey.text = @"密码:";
    [self.view addSubview: _bUserKey];
    
    _userKey = [[UITextField alloc] initWithFrame: CGRectMake(50, 250, 300, 50)];
    _userKey.borderStyle = UITextBorderStyleLine;
    _userKey.keyboardType = UIKeyboardTypePhonePad;
    _userKey.placeholder = @"请输入密码......";
    [self.view addSubview: _userKey];
    
    _login = [UIButton buttonWithType: UIButtonTypeRoundedRect];
    _login.frame = CGRectMake(150, 500, 100, 60);
    _login.backgroundColor = [UIColor brownColor];
    [_login setTitle: @"登陆" forState: UIControlStateNormal];
    [_login setTitleColor: [UIColor blueColor] forState: UIControlStateNormal];
    [_login addTarget: self action: @selector(pressLogin) forControlEvents: UIControlEventTouchUpInside];
    [self.view addSubview: _login];
    
   
    _register = [UIButton buttonWithType: UIButtonTypeRoundedRect];
    _register.frame = CGRectMake(150, 600, 100, 60);
    _register.backgroundColor = [UIColor brownColor];
    [_register setTitle: @"注册" forState: UIControlStateNormal];
    [_register setTitleColor: [UIColor blueColor] forState: UIControlStateNormal];
    [_register addTarget: self action: @selector(pressRegister) forControlEvents: UIControlEventTouchUpInside];
    [self.view addSubview: _register];
}

- (void) touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self.userName resignFirstResponder];
    [self.userKey resignFirstResponder];
}

- (void) pressLogin {
    NSString *strName = @"Asina";
    NSString *strKey = @"1234567";
    
    NSString *strTextName = _userName.text;
    NSString *strTextKey = _userKey.text;
    
    if ([strTextName isEqualToString: strName] && [strTextKey isEqualToString: strKey]) {
        NSLog(@"用户名密码正确");
        //显示弹窗
        //在旧版本里弹窗是用UIAlertView，但是在现在的版本是用UIAlertController的
        //创建好弹窗对象之后，使用alertControllerWithTitle方法为其赋值，传入三个参数
        //第一个参数是指弹窗的标题，第二个参数指弹窗显示的信息，第三个参数指弹窗样式
        UIAlertController *alert = [UIAlertController alertControllerWithTitle: @"提示" message: @"验证成功，登陆成功" preferredStyle: UIAlertControllerStyleAlert];
        //接下来为弹窗添加按钮，首先用UIAlertAction创建弹窗按钮对象，然后调用actionWithTitle方法赋值，传入两个参数
        //第一个参数是指按钮的文本内容，第二个参数是传入一个代码块作为一个执行的操作，如果不需要操作直接传入nil即可
        //如果需要多个按钮，直接按这个格式创建多个按钮对象即可
        UIAlertAction *conform = [UIAlertAction actionWithTitle: @"确认" style: UIAlertActionStyleDefault handler: ^(UIAlertAction *_Nonnull action) {
            NSLog(@"点击了确认按钮");
        }];
        //创建完弹窗后，调用presentViewController使弹窗显示出来，传入三个参数
        //第一个参数指创建好的弹窗对象，第二个参数指是否需要动画效果，第三个参数传入一个代码块，不需要代码块也可以传nil
        [self presentViewController: alert animated: YES completion: nil];
        //最后将按钮添加到弹窗中
        [alert addAction: conform];
    } else {
        NSLog(@"用户名密码错误");
        UIAlertController *alert2 = [UIAlertController alertControllerWithTitle: @"提示" message: @"验证失败，登陆失败" preferredStyle: UIAlertControllerStyleAlert];
        UIAlertAction *conform2 = [UIAlertAction actionWithTitle: @"确认" style: UIAlertActionStyleDefault handler: ^(UIAlertAction *_Nonnull action) {
            NSLog(@"点击了确认按钮");
        }];
        [self presentViewController: alert2 animated: YES completion: nil];
        [alert2 addAction: conform2];
    }
}

- (void) pressRegister {
    
}

@end
