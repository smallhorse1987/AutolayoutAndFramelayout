//
//  subBtn.m
//  AutolayoutAndFrameBased
//
//  Created by chen xiaosong on 16/4/26.
//  Copyright © 2016年 chen xiaosong. All rights reserved.
//

#import "subBtn.h"

@implementation subBtn

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
- (void)didMoveToSuperview
{
    [super didMoveToSuperview];
    
    NSLog(@"subview:didMoveToSuperview");
}

- (void)drawRect:(CGRect)rect
{
    [super drawRect:rect];
    
    NSLog(@"subview:drawRect");
}

- (void)layoutSubviews
{
    [super layoutSubviews];
    
    NSLog(@"subview:layoutSubviews");
}

@end
