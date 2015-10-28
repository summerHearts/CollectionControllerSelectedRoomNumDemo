//
//  HotelDetailInfoCell.h
//  CollectionControllerDemo
//
//  Created by 佐毅 on 15/10/27.
//  Copyright © 2015年 上海乐住信息技术有限公司. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HotelListModel.h"
#import "HotelStarView.h"
@interface HotelDetailInfoCell : UICollectionViewCell

@property (weak, nonatomic) IBOutlet UIImageView *hotelImageVIew;
@property (weak, nonatomic) IBOutlet UILabel *hotelNameLabel;
@property (weak, nonatomic) IBOutlet HotelStarView *hotelStartView;
@property (weak, nonatomic) IBOutlet UILabel *commentCountLabel;
@property (weak, nonatomic) IBOutlet UILabel *saleCountLabel;
@property (weak, nonatomic) IBOutlet UILabel *hotelAddressLabel;
@property (weak, nonatomic) IBOutlet UILabel *checkInLabel;
@property (weak, nonatomic) IBOutlet UILabel *checkOutLabel;
@property (weak, nonatomic) IBOutlet UILabel *hotelpicCount;

@property (nonatomic,assign) BOOL isFromDetail;

@property (nonatomic,strong) NSMutableArray *facilityArray;
@property (nonatomic,strong) NSMutableArray *hotelPicArr;

- (void)loadData:(HotelListModel *)hotelListModel;
@end
