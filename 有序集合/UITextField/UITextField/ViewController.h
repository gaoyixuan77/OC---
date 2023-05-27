//
//  ViewController.h
//  UITextField
//
//  Created by Eleven on 2023/5/22.
//

#import <UIKit/UIKit.h>

//UITextFieldDelegate是UITextField的一个协议
@interface ViewController : UIViewController <UITextFieldDelegate> {
    //定义一个textField
    UITextField *_textField;
}

//定义属性
@property (retain, nonatomic) UITextField *textField;

@end

