//
//  MyTableViewCell.m
//  自定义cell和cell的复用
//
//  Created by Eleven on 2023/6/7.
//

#import "MyTableViewCell.h"

@implementation MyTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    self.label = [[UILabel alloc] init];
    self.label.text = @"子视图";
    [self.contentView addSubview:_label];
    self.button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    
    [self.contentView addSubview:_button];
    return self;
}

- (void)layoutSubviews {
    _label.frame = CGRectMake(0, 0, 70, 80);
    _button.frame = CGRectMake(100, 0, 70, 70);
}

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
