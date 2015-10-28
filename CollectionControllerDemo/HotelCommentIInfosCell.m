//
//  HotelCommentIInfoCell.m
//  CollectionControllerDemo
//
//  Created by 佐毅 on 15/10/27.
//  Copyright © 2015年 上海乐住信息技术有限公司. All rights reserved.
//

#import "HotelCommentIInfosCell.h"
@interface HotelCommentIInfosCell()

@property(strong,nonatomic) NSMutableArray *imageViewArray;

@property(strong ,nonatomic) NSMutableArray *urlArray;

@end
@implementation HotelCommentIInfosCell

- (void)awakeFromNib {
    _urlArray=[NSMutableArray array];
    _imageViewArray=[NSMutableArray array];
    for (int i = 0; i < 4; i++) {
        UIButton *imageView = [[UIButton alloc]initWithFrame:CGRectMake(i*70+10,0,58,58)];
        imageView.tag=110+i;
        imageView.contentMode                 = UIViewContentModeScaleToFill;
        [self.hotelContainView addSubview:imageView];
        [_imageViewArray addObject:imageView];
    }
    [self.startView loadGrade:5.0f];
}

- (void)loadData:(id)data{
    self.connectPersonLabel.text=@"上海乐住信息技术有限公司";
    //月销售
    self.hotelCountLabel.text=@"查看全部(200条评论)";
    self.createTimeLabel.text= @"2015-09-12 08:21:33";
    self.hotelCommentLabel.text = @"万圣节快到了,🎃🎃🎃🎃🎃🎃🎃🎃🎃🎃🎃🎃";
    for (int i = 0; i < 4; i++) {
        UIButton *imageView = [_imageViewArray objectAtIndex:i];
        [imageView setImage:[UIImage imageNamed:@"title"] forState:UIControlStateNormal];
        imageView.hidden = NO;
    }
}
@end
