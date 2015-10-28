//
//  HotelCell.m
//  CollectionControllerDemo
//
//  Created by 佐毅 on 15/10/27.
//  Copyright © 2015年 上海乐住信息技术有限公司. All rights reserved.
//
#import "HotelCell.h"

@implementation HotelCell

-(void)loadCellData:(id)data{
    //酒店名字
    self.hotelNameLabel.text=@"上海乐住信息技术有限公司";
    //月销售
    self.hotelMonthSaleLabel.text=@"200";
    //价格
    self.hotelPriceLabel.text=[NSString stringWithFormat:@"￥210"];
    //门市价格
    NSString *str = [NSString stringWithFormat:@"￥100"];
    NSMutableAttributedString *content = [[NSMutableAttributedString alloc] initWithString:str];
    [content addAttribute:NSStrikethroughStyleAttributeName value:[NSNumber numberWithInt: NSUnderlineStyleSingle] range:NSMakeRange(0, content.length)];
    self.hotelPMSPriceLabel.attributedText = content;
    //星星评分
    [self.hotelStarView loadGrade:5];
}

@end
