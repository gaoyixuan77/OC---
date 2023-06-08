//
//  ImageViewController.h
//  照片墙案例
//
//  Created by Eleven on 2023/5/31.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ImageViewController : UIViewController

//为了使调用该方法的对象将其图片传给本对象,可以通过创建属性来记录传进来的图片的是哪一张，有创建如下两种种属性的方式
//1、图像视图的tag，在根视图的图片部分为其添加特殊的tag值，在调用函数的时候将该tag值setter进创建的对象的属性中
@property (nonatomic,assign) NSUInteger imageTag;
//2、图像对象，直接在根视图中对象调用函数时将图片set进该属性
@property (nonatomic, retain) UIImage *image;
//图像视图对象，这个不能用来传，传了的话就会导致点开后的图片在根视图上消失，当然你要是想做什么消消乐功能去用这个我也不阻拦你
@property (nonatomic,retain) UIImageView *imageView;

@end

NS_ASSUME_NONNULL_END
