//
//  HotelRoomTypeFillterView.h
//  Mike
//
//  Created by 佐毅 on 15/10/26.
//  Copyright © 2015年 上海乐住信息技术有限公司. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HotelRoomTypeFillterView : UICollectionReusableView
@property (weak, nonatomic) IBOutlet UILabel *roomTypeLabel;

@property (weak, nonatomic) IBOutlet UILabel *promoTextLabel;

@property (weak, nonatomic) IBOutlet UILabel *roomTypeInfoLabel;

@property (weak, nonatomic) IBOutlet UILabel *realPriceLabel;

@property (weak, nonatomic) IBOutlet UILabel *pmsPriceLabel;
@property (weak, nonatomic) IBOutlet UILabel *saleDetailLabel;

@property (weak, nonatomic) IBOutlet UIButton *orderSureBtn;
@end
