//
//  HotelCell.h
//  CollectionControllerDemo
//
//  Created by 佐毅 on 15/10/27.
//  Copyright © 2015年 上海乐住信息技术有限公司. All rights reserved.
//
#import "HotelStarView.h"

@interface HotelCell : UICollectionViewCell

/**
 *  酒店图片
 */

@property(nonatomic,weak) IBOutlet UIImageView *hotelImageView;

/**
 *  酒店名字
 */

@property(nonatomic,weak) IBOutlet UILabel *hotelNameLabel;

/**
 *  酒店城市
 */

@property(nonatomic,weak) IBOutlet UILabel *hotelCityLabel;

/**
 *  月销售
 */

@property(nonatomic,weak) IBOutlet UILabel *hotelMonthSaleLabel;

/**
 *  价格
 */

@property(nonatomic,weak) IBOutlet UILabel *hotelPriceLabel;

/**
 *  门市价格
 */

@property(nonatomic,weak) IBOutlet UILabel *hotelPMSPriceLabel;

/**
 *  星星评分
 */

@property(nonatomic,weak) IBOutlet HotelStarView *hotelStarView;


-(void)loadCellData:(id)data;
@end
