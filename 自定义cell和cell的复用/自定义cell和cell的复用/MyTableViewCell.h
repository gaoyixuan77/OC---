//
//  MyTableViewCell.h
//  自定义cell和cell的复用
//
//  Created by Eleven on 2023/6/7.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface MyTableViewCell : UITableViewCell

@property (nonatomic, strong) UILabel *label;
@property (nonatomic, strong) UIButton *button;

@end

NS_ASSUME_NONNULL_END
