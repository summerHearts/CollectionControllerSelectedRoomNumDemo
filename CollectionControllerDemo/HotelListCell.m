//
//  HotelListCell.m
//  CollectionControllerDemo
//
//  Created by 佐毅 on 15/10/27.
//  Copyright © 2015年 上海乐住信息技术有限公司. All rights reserved.
//

#import "HotelListCell.h"

@interface HotelListCell()

@property(strong,nonatomic) NSString *type;

@end

@implementation HotelListCell

-(void)loadModelType:(NSString *)type{
    _type=type;
}

-(void)loadCellData:(id)data{
    self.hotelNameLabel.text = @"上海乐住信息技术有限公司";
    //月销售
    self.hotelMonthSaleLabel.text=@"200";
    //价格
    self.hotelPriceLabel.text=[NSString stringWithFormat:@"￥210"];
    //门市价格
    NSString *str = [NSString stringWithFormat:@"￥100"];
    NSMutableAttributedString *content = [[NSMutableAttributedString alloc] initWithString:str];
    [content addAttribute:NSStrikethroughStyleAttributeName value:[NSNumber numberWithInt: NSUnderlineStyleSingle] range:NSMakeRange(0, content.length)];
    self.hotelPMSPriceLabel.attributedText = content;

    //是否返现
        [_hotelCashBackImageView setHidden:NO];
 
    //酒店距离
    switch ([_type intValue]) {
        case -1:
            self.hotelCityLabel.text=[NSString stringWithFormat:@"距您200m"];
            break;
        case 0:
            self.hotelCityLabel.text=[NSString stringWithFormat:@"距您100m"];
            break;
        case 1:
        case 4:
            self.hotelCityLabel.text=[NSString stringWithFormat:@"距您300m"];
            break;
        default:
            self.hotelCityLabel.text=[NSString stringWithFormat:@"距目的地100m"];
            break;
    }
    //酒店图片
//    Hotelpic *hotelpic=[data.hotelpic safeObjectAtIndex:0];
//    Pic *pic=[hotelpic.pic safeObjectAtIndex:0];
    [self.hotelImageView setImage:[UIImage imageNamed:@"title"]];
    //酒店房间数
    _hotelRoomCountLabel.text=@"100单";
    _hotelRoomCountLabel.textColor=[UIColor orangeColor];
    //是否特价房
    self.hotelPriceLabel.text=[NSString stringWithFormat:@"200"];
 
    //是否售罄
    [_saleoutImageView setHidden:YES];
}


-(NSString *)stringForDistance:(CGFloat)distance{
    if (distance>=1000) {
        return [NSString stringWithFormat:@"%.1fkm",distance/1000];
    }else{
        return [NSString stringWithFormat:@"%3.fm",distance];
    }
}

@end
