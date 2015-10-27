//
//  HotelRoomTypeFillterView.m
//  Mike
//
//  Created by 佐毅 on 15/10/26.
//  Copyright © 2015年 上海乐住信息技术有限公司. All rights reserved.
//

#import "HotelRoomTypeFillterView.h"

@implementation HotelRoomTypeFillterView

- (void)awakeFromNib {
    self.orderSureBtn.layer.cornerRadius = 4.f;
    self.orderSureBtn.layer.shouldRasterize = YES;
    self.orderSureBtn.layer.rasterizationScale = [UIScreen mainScreen].scale;
}

@end
