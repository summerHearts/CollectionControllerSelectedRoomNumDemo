//
//  HotelDetailAutoLayoutCell.m
//  Mike
//
//  Created by 佐毅 on 15/10/26.
//  Copyright © 2015年 上海乐住信息技术有限公司. All rights reserved.
//

#import "HotelDetailAutoLayoutCell.h"
#import "UIColor+Hex.h"
@implementation HotelDetailAutoLayoutCell

- (void)awakeFromNib {
   self.backgroundColor           = [UIColor whiteColor];
   self.bgView.layer.cornerRadius = 5.0;
   self.bgView.layer.borderWidth  = 1;
   self.bgView.layer.borderColor  = [UIColor colorWithHexString:@"38a138"].CGColor;
}

- (NSIndexPath *)loadCellData:(HotelRooms *)data indexPath:(NSIndexPath *)indexPath online:(NSString *)online{
    NSIndexPath *lastIndexPath;
    //房间号
    _roomNumLabel.text=data.roomno;
    //是否有窗
    if ([data.haswindow isEqualToString:@"T"]) {
        self.windowImage.hidden = NO;
    }else{
        self.windowImage.hidden = YES;
    }
    //在线
    if ([online isEqualToString:@"T"]) {
        //可预订
        if ([data.roomstatus isEqualToString:@"vc"]) {
            //选中
            if ([data.isselected isEqualToString:@"F"]) {
                [self setCanSelect];
            }else{
                [self setIsSelect];
                lastIndexPath=indexPath;
            }
        }
        //不可预订
        else{
            [self setCantSelect];
        }
    }
    //不在线
    else{
        [self setCantSelect];
    }
    return lastIndexPath;
}

-(void)setIsSelect{
    self.layer.borderColor = [UIColor colorWithHexString:@"38a138"].CGColor;
    [self.maskView setBackgroundColor:[UIColor colorWithHexString:@"38a138"]];
    [_roomNumLabel setTextColor:[UIColor whiteColor]];
    [_roomStatusLabel setTextColor:[UIColor whiteColor]];
    _roomStatusLabel.text=@"已选";
}

-(void)setCanSelect{
    self.layer.borderColor = [UIColor colorWithHexString:@"38a138"].CGColor;
//    [self.bgView setBackgroundColor:[UIColor colorWithHexString:@"ffffee"]];
    [_roomNumLabel setTextColor:[UIColor colorWithHexString:@"38a138"]];
    [_roomStatusLabel setTextColor:[UIColor colorWithHexString:@"38a138"]];
    _roomStatusLabel.text=@"可订";
}

-(void)setCantSelect{
    self.layer.borderColor = [UIColor grayColor].CGColor;
    [self.maskView setBackgroundColor:[UIColor colorWithHexString:@"ececec"]];
    [_roomNumLabel setTextColor:[UIColor grayColor]];
    [_roomStatusLabel setTextColor:[UIColor grayColor]];
    _roomStatusLabel.text=@"已订";
}

@end
