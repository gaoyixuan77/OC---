//
//  ImageViewController.m
//  照片墙案例
//
//  Created by Eleven on 2023/5/31.
//

#import "ImageViewController.h"
#import "RootViewController.h"

@interface ImageViewController ()

@end

@implementation ImageViewController

@synthesize imageView = _imageView;
@synthesize image = _image;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"图片展示";
    UIImageView *_imageView = [[UIImageView alloc] init];
    _imageView.frame = CGRectMake(0, 100, 394, 650);
    
    //通过图片属性image传图片
    //_imageView.image = _image;
    
    //通过imageTag属性传图片
    _imageView.image = [UIImage imageNamed: [NSString stringWithFormat: @"xmy%lu.jpg", _imageTag - 100]];
    [self.view addSubview: _imageView];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
