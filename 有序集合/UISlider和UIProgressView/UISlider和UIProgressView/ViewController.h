//
//  ViewController.h
//  UISlider和UIProgressView
//
//  Created by Eleven on 2023/5/22.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
    //进度条对象一般用来表示下载或视频播放的进度（被动）
    UIProgressView *_progressView;
    
    //滑动条一般用来进行调整音量等（用户可以主动调整）
    UISlider *_slider;
}

@property (retain, nonatomic) UIProgressView *pView;
@property (retain, nonatomic) UISlider *pSlider;

@end

