//
//  HotelDetailInfoCell.m
//  CollectionControllerDemo
//
//  Created by 佐毅 on 15/10/27.
//  Copyright © 2015年 上海乐住信息技术有限公司. All rights reserved.
//

#import "HotelDetailInfoCell.h"
#import "HotelDetailInfoModel.h"
#import "HotelStarView.h"
#import "UIImageView+WebCache.h"
@implementation HotelDetailInfoCell

- (void)awakeFromNib {
    
}

- (void)loadData:(HotelListModel *)hotelListModel{
    if (self.hotelPicArr&&self.hotelPicArr.count>0) {
        [self.hotelPicArr removeAllObjects];
    }
    if (self.isFromDetail) {
         if (hotelListModel.pic.count > 0) {
            Pic *pic = [hotelListModel.pic objectAtIndex:0];
            [self.hotelImageVIew  sd_setImageWithURL:[NSURL URLWithString:pic.url] placeholderImage:[UIImage imageNamed:@"title"]];
         }
        if (hotelListModel.pic.count > 0) {
            for (Pic *item in hotelListModel.pic) {
                [self.hotelPicArr addObject:item.url];
            }
        }
    }else{
        if (hotelListModel.hotelpic.count>0) {
            Hotelpic *picModel =  [hotelListModel.hotelpic objectAtIndex:0];
            Pic *pic = [picModel.pic objectAtIndex:0];
            [self.hotelImageVIew  sd_setImageWithURL:[NSURL URLWithString:pic.url] placeholderImage:[UIImage imageNamed:@"title"]];
            self.hotelPicArr = [[NSMutableArray alloc]init];
            
            if (picModel.pic.count > 0) {
                for (HotelpicDetail *item in picModel.pic) {
                    [self.hotelPicArr addObject:item.url];
                }
            }
        }
    }
    
    self.hotelNameLabel.text = hotelListModel.hotelname;
    self.hotelpicCount.text = [NSString stringWithFormat:@"%ld张",(long)hotelListModel.hotelpicnum];
    self.hotelpicCount.backgroundColor = [UIColor colorWithWhite:0.0 alpha:0.5];
    [self.hotelStartView loadGrade:hotelListModel.grade];
    self.hotelAddressLabel.text = hotelListModel.detailaddr;
    if ([hotelListModel.ordernummon doubleValue]> 0) {
        self.saleCountLabel.text = [NSString stringWithFormat:@"月销售%@单",hotelListModel.ordernummon];
    }
    NSMutableArray *faceArr = [[NSMutableArray alloc]init];
    if (hotelListModel.hotelfacility.count >0 ) {
        
        for (HotelfacilityDetail *item in hotelListModel.hotelfacility) {
            
            if (item.facid ==1 || item.facid ==48) {
                
                if (![faceArr containsObject:item]) {
                    [faceArr addObject:item];
                }
            }
            else if (item.facid ==5 || item.facid ==45){
                if (![faceArr containsObject:item]) {
                    [faceArr addObject:item];
                }
            }
            else if(item.facid ==34 || item.facid == 44){
                if (![faceArr containsObject:item]) {
                    [faceArr addObject:item];
                }
            }
        }
    }
    
    _facilityArray  = faceArr;
    [self.hotelStartView loadGrade:hotelListModel.grade];
    if (hotelListModel.scorecount > 0) {
        self.commentCountLabel.text = [NSString stringWithFormat:@"%ld条评论",hotelListModel.scorecount];
    }else{
        self.commentCountLabel.text = [NSString stringWithFormat:@"暂无评论"];
    }

}
@end
