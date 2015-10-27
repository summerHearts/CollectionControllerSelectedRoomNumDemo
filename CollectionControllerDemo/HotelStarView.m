//
//  HotelStarView.m
//  CollectionControllerDemo
//
//  Created by 佐毅 on 15/10/27.
//  Copyright © 2015年 上海乐住信息技术有限公司. All rights reserved.
//

#import "HotelStarView.h"

@interface HotelStarView()

@property(strong,nonatomic) UIImageView *backImageView;

@property(strong,nonatomic) UIImageView *foreImageView;

@end

@implementation HotelStarView

-(instancetype)initWithFrame:(CGRect)frame{
    self=[super initWithFrame:frame];
    if (self) {
        //背景
        _backImageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 65, 23)];
        _backImageView.image = [UIImage imageNamed:@"wujiaoxing_all_a"];
        _backImageView.contentMode = UIViewContentModeLeft;
        [self addSubview:_backImageView];
        //前景
        _foreImageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 65, 23)];
        _foreImageView.image = [UIImage imageNamed:@"wujiaoxing_all"];
        _foreImageView.contentMode = UIViewContentModeLeft;
        _foreImageView.clipsToBounds = YES;
        [self addSubview:_foreImageView];
    }
    return self;
}

-(void)awakeFromNib{
    //背景
    _backImageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 65, 23)];
    _backImageView.image = [UIImage imageNamed:@"wujiaoxing_all_a"];
    _backImageView.contentMode = UIViewContentModeLeft;
    [self addSubview:_backImageView];
    //前景
    _foreImageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 65, 23)];
    _foreImageView.image = [UIImage imageNamed:@"wujiaoxing_all"];
    _foreImageView.contentMode = UIViewContentModeLeft;
    _foreImageView.clipsToBounds = YES;
    [self addSubview:_foreImageView];
}

-(void)loadGrade:(NSInteger)grade{
    _foreImageView.frame = CGRectMake(0, 0, _backImageView.frame.size.width*(grade/5.0), 23);
}

@end
