//
//  HeaderView.m
//  ZYLinkageDemo
//
//  Created by 雨张 on 2018/5/29.
//  Copyright © 2018年 雨张. All rights reserved.
//

#import "HeaderView.h"
@interface HeaderView()

@end
@implementation HeaderView
-(id)initWithFrame:(CGRect)frame
{
    if(self = [super initWithFrame:frame])
    {
        _titleLabel           = [UILabel new];
        _titleLabel.textColor = [UIColor grayColor];
        _titleLabel.font      = [UIFont boldSystemFontOfSize:16];
        [self addSubview:_titleLabel];
    }
    return self;
}
-(void)layoutSubviews
{
    [super layoutSubviews];
    self.titleLabel.frame = CGRectMake(0, 0,self.bounds.size.width, self.bounds.size.height);
}
@end
