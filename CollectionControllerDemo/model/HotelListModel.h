//
//  HotelListModel.h
//  mike2.0
//
//  Created by Mi on 15/9/17.
//  Copyright (c) 2015年 flychi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "HotelFacilityModel.h"
#import "PicModel.h"

@class Hotelpic,Pics;
@interface HotelListModel : NSObject
/**
 *  距您xxx米，该距离表示用户坐标到目的坐标的距离
 */

@property (nonatomic, assign) CGFloat userdistance;

@property (nonatomic, strong) NSArray   *service;

/**
 *  是否返现（T/F）
 */

@property (nonatomic, copy  ) NSString  *iscashback;

@property (nonatomic, assign) NSInteger numroomtype3;

@property (nonatomic, assign) long long      createtime;

@property (nonatomic, copy  ) NSString  *defaultlevaltime;

/**
 *  是否最近酒店，distance值最小的酒店为T,其他为F
 */

@property (nonatomic, copy  ) NSString  *isnear;

@property (nonatomic, assign) long long  modifytime;

@property (nonatomic, copy  ) NSString  *isfull;

/**
 *  距您xxx米，该距离表示地标坐标到目的坐标的距离
 */

@property (nonatomic, assign) CGFloat   distance;

@property (nonatomic,strong ) NSArray   *hotelpic;


@property (nonatomic, assign) NSInteger numroomtype2;

@property (nonatomic, assign) CGFloat   longitude;

@property (nonatomic, copy  ) NSString  *introduction;

@property (nonatomic, copy  ) NSString  *retentiontime;

@property (nonatomic, assign) NSInteger maxprice;

@property (nonatomic, assign) NSInteger numroomtype1;

@property (nonatomic, strong) NSArray   *businesszone;


@property (nonatomic, assign) CGFloat   latitude;

/**
 *  @brief 特价房文字的颜色
 */
@property (nonatomic,copy) NSString *promoTextColor;

/**
 *  @brief 特价房的文字
 */
@property (nonatomic,copy) NSString *promoText;
/**
 *  @brief  特价起始时间
 */
@property (nonatomic,copy) NSString *promostarttime;
/**
 *  @brief  特价结束时间
 */
@property (nonatomic,copy) NSString *promoendtime;

/**
 *  酒店所在城市
 */

@property (nonatomic, copy) NSString *hotelcity;

/**
 *  房间数
 */

@property (nonatomic, assign) NSInteger roomnum;

/**
 *  是否签约酒店 T F
 */

@property (nonatomic, copy) NSString *ispms;

/**
 *  地址
 */

@property (nonatomic, copy) NSString *detailaddr;

/**
 *  酒店联系电话
 */

@property (nonatomic, copy) NSString *hotelphone;

/**
 *  酒店设施
 */

@property (nonatomic, strong) NSArray *hotelfacility;

/**
 *  最低价格对应房型的门市价
 */

@property (nonatomic, assign) NSInteger minpmsprice;

/**
 *  酒店所在区
 */

@property (nonatomic, copy) NSString *hoteldis;

/**
 *  规则编码
 */

@property (nonatomic, assign) NSInteger hotelrulecode;

/**
 *  酒店id
 */

@property (nonatomic, copy) NSString *hotelid;

/**
 *  权重
 */

@property (nonatomic, assign) NSInteger priority;

/**
 *  最低价格
 */

@property (nonatomic, assign) NSInteger minprice;

/**
 *  可订房描述
 */

@property (nonatomic, copy) NSString *avlblroomdes;

/**
 *  可订房间数
 */

@property (nonatomic, assign) NSInteger avlblroomnum;

/**
 *  酒店名字
 */

@property (nonatomic, copy) NSString *hotelname;

/**
 *  酒店评分
 */

@property (nonatomic, assign) NSInteger grade;

/**
 *  是否推荐 T F
 */

@property (nonatomic, copy) NSString *isrecommend;

/**
 *  酒店图片
 */

@property (nonatomic, strong) NSArray *pic;

/**
 *  酒店图片总数
 */

@property (nonatomic, assign) NSInteger hotelpicnum;

/**
 *  描述字体颜色
 */

@property (nonatomic, copy) NSString *descolor;
//状态: “>3间房间”    绿色   32ab18
//状态："<=仅剩3间"   红色   fb4b40
//状态：满房   灰色    989898）

/**
 *  是否是pms2.0酒店 T F
 */

@property (nonatomic, copy) NSString *isnewpms;

/**
 *  月订单数
 */

@property (nonatomic, copy) NSString *ordernummon;

/**
 *  是否上线 T F
 */

@property (nonatomic, copy) NSString *visible;

/**
 *  评价次数
 */

@property (nonatomic, assign) NSInteger scorecount;

/**
 *  酒店介绍
 */

@property (nonatomic, copy) NSString *hoteldisc;

/**
 *  是否在线 T F
 */

@property (nonatomic, copy) NSString *online;

/**
 *  酒店所在省
 */

@property (nonatomic, copy) NSString *hotelprovince;

/**
 *  收藏时间
 */

@property (nonatomic, copy) NSString *collecttime;

/**
 *  预定历史房间号
 */

@property (nonatomic, copy) NSString *roomno;

/**
 *  酒店类型
 */

@property (nonatomic, copy) NSString *hoteltype;


@property (nonatomic, copy) NSString *hotelvc;

/**
 *  房型名字
 */

@property (nonatomic, copy) NSString *roomtypename;

/**
 *  最近订单时间描述
 */

@property (nonatomic, copy) NSString *rcntordertimedes;

/**
 *  预定历史房型
 */

@property (nonatomic, assign) NSInteger roomtypeid;

#pragma mark - Promo

/**
 *  是否特价, 0非，1特价
 */

@property (nonatomic,assign) NSInteger isonpromo;

/**
 *  特价房剩余房数量
 */

@property (nonatomic,assign) NSInteger roomvacancy;

/**
 *  特价房价格
 */

@property (nonatomic,assign) NSInteger promoPrice;

@end

