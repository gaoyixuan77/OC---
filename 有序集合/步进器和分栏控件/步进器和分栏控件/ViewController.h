//
//  ViewController.h
//  步进器和分栏控件
//
//  Created by Eleven on 2023/5/22.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
    UIStepper *_stepper;
    UISegmentedControl *_segControl;
}

@property (retain, nonatomic) UIStepper *stepper;
@property (retain, nonatomic) UISegmentedControl *segControl;

@end

