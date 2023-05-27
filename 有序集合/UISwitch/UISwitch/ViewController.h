//
//  ViewController.h
//  UISwitch
//
//  Created by Eleven on 2023/5/22.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
    UISwitch *mySwitch;
    NSTimer *myTimer;
}

@property (retain, nonatomic) UISwitch *mySwitch;
@property (retain, nonatomic) NSTimer *myTimer;

@end

