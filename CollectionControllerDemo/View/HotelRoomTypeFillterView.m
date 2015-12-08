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

- (void)loadHotelRoomTypeData:(HotelRoomtype *)roomType{
    //判断是否特价标志
    BOOL isNoPromo = [roomType.isonpromo isEqualToString:@"1"];
    self.promoImageWidth.constant = isNoPromo ? 50 :0 ;
    
    //房型名字
    self.roomTypeLabel.text = roomType.roomtypename;
    //特价优惠信息
    self.promoTextLabel.text = roomType.promotext;
    //房型信息
    NSString *str;
    if (roomType.bedlength>0&&roomType!=nil) {
        if ([roomType.bedlength rangeOfString:@","].location !=NSNotFound) {
            NSArray *bedLengthArr = [roomType.bedlength
                                     componentsSeparatedByCharactersInSet:[NSCharacterSet
                                                                           characterSetWithCharactersInString:@","]];
            str =  [bedLengthArr lastObject];
        }else{
            str =[NSString stringWithFormat:@"%@", roomType.bedlength];
        }
    }
    NSString *bedLengthTypeInfo = [NSString stringWithFormat:@"约%ld平米/床%@",(long)roomType.area,str];
    self.roomTypeInfoLabel.text =bedLengthTypeInfo;
    //剩余房间数
    BOOL vccount = roomType.rooms.count==0;
    self.saleDetailLabel.text = vccount ? @"":roomType.vctxt;
    //立即预定各种状态更改
    self.orderSureBtn.userInteractionEnabled = YES;
    [self.orderSureBtn setBackgroundColor:[UIColor orangeColor]];
    [self.orderSureBtn setTitle:@"立即预订" forState:UIControlStateNormal];
    //门市价和眯客价显示
    NSString *pmsPrice = [NSString stringWithFormat:@"%ld",roomType.roomtypeprice];
    if (roomType.cashbackcost>0 && [roomType.iscashback isEqualToString:@"T"]) {
        if (([pmsPrice floatValue] - roomType.cashbackcost)>=0) {
            pmsPrice =[self formatNumber:([pmsPrice floatValue] - roomType.cashbackcost)];
        }else{
            pmsPrice = @"0";
        }
    }
    self.pmsPriceLabel.text = [NSString stringWithFormat:@"￥%ld",(long)roomType.roomtypepmsprice];
    self.realPriceLabel.text =  [NSString stringWithFormat:@"%@",pmsPrice];
}

-(NSString *)formatNumber:(float)number
{
    //保留到小数点后1位，如果小数点后超过1位则保留实际位数
    NSString *strNum = [NSString stringWithFormat:@"%.5f",number];
    while (strNum.length>0) {
        NSString *last = [strNum substringFromIndex:strNum.length-1];
        if ([last isEqualToString:@"."]) {
            strNum = [strNum substringToIndex:strNum.length-1];
            break;
        }
        else if ([last isEqualToString:@"0"]) {
            strNum = [strNum substringToIndex:strNum.length-1];
        }
        else
        {
            break;
        }
    }
    return strNum;
}

@end
