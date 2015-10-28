//
//  HotelListCell.h
//  CollectionControllerDemo
//
//  Created by 佐毅 on 15/10/27.
//  Copyright © 2015年 上海乐住信息技术有限公司. All rights reserved.
//

#import "HotelCell.h"

static NSString *HotelListCellIdentifier=@"HotelListCellIdentifier";

@interface HotelListCell : HotelCell

/**
 *  是否返现标记
 */

@property (weak, nonatomic) IBOutlet UIImageView *hotelCashBackImageView;

/**
 *  剩余房间数
 */

@property (weak, nonatomic) IBOutlet UILabel *hotelRoomCountLabel;

/**
 *  特价标记
 */

@property (weak, nonatomic) IBOutlet UIImageView *promoImageView;

/**
 *  售罄标记
 */

@property (weak, nonatomic) IBOutlet UIImageView *saleoutImageView;

/**
 *  取哪种距离
 */

@property(assign,nonatomic) BOOL isDistance;


@end
