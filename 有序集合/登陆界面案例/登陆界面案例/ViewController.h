//
//  ViewController.h
//  登陆界面案例
//
//  Created by Eleven on 2023/5/23.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
    UILabel *_bUesrName;
    UITextField *_userName;
    UILabel *_bUserKey;
    UITextField *_uesrKey;
    UIButton *_login;
    UIButton *_register;
}

@property (retain, nonatomic) UILabel *bUserName;
@property (retain, nonatomic) UITextField *userName;
@property (retain, nonatomic) UILabel *bUserKey;
@property (retain, nonatomic) UITextField *userKey;
@property (retain, nonatomic) UIButton *login;
@property (retain, nonatomic) UIButton *register1;

@end

