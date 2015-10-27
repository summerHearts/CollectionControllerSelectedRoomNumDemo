//
//  HotelDetailAutoLayoutCell.m
//  Mike
//
//  Created by 佐毅 on 15/10/26.
//  Copyright © 2015年 上海乐住信息技术有限公司. All rights reserved.
//

#import "HotelDetailAutoLayoutCell.h"

@implementation HotelDetailAutoLayoutCell

- (void)awakeFromNib {
    self.backgroundColor = [UIColor whiteColor];
   self.bgView.layer.cornerRadius              = 5.0;
   self.bgView.layer.borderWidth               = 1;
   self.bgView.layer.borderColor               = [UIColor orangeColor].CGColor;
}

@end
