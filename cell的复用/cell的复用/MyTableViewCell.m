//
//  MyTableViewCell.m
//  cell的复用
//
//  Created by Eleven on 2023/6/5.
//

#import "MyTableViewCell.h"

@implementation MyTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier: @"myTableView"];
    self.label = [[UILabel alloc] init];
    self.label.text = @"子视图";
    [self.contentView addSubview: _label];
    self.button = [[UIButton alloc] init];
//    self.button = [UIButton buttonWithType: UIButtonTypeRoundedRect];
    [self.contentView addSubview: _button];
    return self;
}
- (void)layoutSubviews {
    _label.frame = CGRectMake(30, 10, 100, 50);
    _button.frame = CGRectMake(100, 10, 50, 50);
}
- (void)awakeFromNib {
    [super awakeFromNib];
}


- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
