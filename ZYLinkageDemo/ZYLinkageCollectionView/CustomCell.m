//
//  CustomCell.m
//  ZYLinkageDemo
//
//  Created by 雨张 on 2018/5/29.
//  Copyright © 2018年 雨张. All rights reserved.
//

#import "CustomCell.h"

@implementation CustomCell
-(id)initWithFrame:(CGRect)frame
{
    if(self = [super initWithFrame:frame])
    {
        _textLabel = [UILabel new];
        _textLabel.font = [UIFont boldSystemFontOfSize:14];
        _textLabel.textColor = [UIColor grayColor];
        [self.contentView addSubview:_textLabel];
        self.backgroundColor = [UIColor whiteColor];
    }
    return self;
}
-(void)layoutSubviews
{
    [super layoutSubviews];
    self.textLabel.frame = CGRectMake(0, 0,self.bounds.size.width, self.bounds.size.height);
}
@end
