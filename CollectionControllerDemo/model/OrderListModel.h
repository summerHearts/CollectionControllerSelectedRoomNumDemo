//
//  OrderListModel.h
//  CollectionControllerDemo
//
//  Created by 佐毅 on 15/10/27.
//  Copyright © 2015年 上海乐住信息技术有限公司. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "TicketsModel.h"

@class Roomorder,Button,Payprice,Orderpaydetail,Checkinuser,Hotelpic,Pic;
@interface OrderListModel : NSObject


//是否特价, 0非，1特价
@property (nonatomic,assign) NSInteger promotype;

/**
 *  是否特价, 0非，1特价

 */
@property (nonatomic,assign) NSInteger isonpromo;
/**
 *  房券代码
 
 */
@property (nonatomic,copy) NSString *roomticket;
/**
 *  城市code
 
 */
@property (nonatomic,copy) NSString *citycode;
/**
 *  重要提示信息
 
 */
@property (nonatomic, copy) NSString *usermessage;
/**
 *  订单显示状态id
 */
@property (nonatomic, assign) NSInteger orderstatuscode;

/**
 *  经度
 */
@property (nonatomic, assign) CGFloat latitude;
/**
 *  联系电话
 */
@property (nonatomic, copy) NSString *contactsphone;
/**
 *  是否需要发票
 */
@property (nonatomic, copy) NSString *receipt;
/**
 *  酒店所属区县
 */
@property (nonatomic, copy) NSString *hoteldis;
/**
 *  切客
 */
@property (nonatomic, copy) NSString *spreaduser;
/**
 *  预离时间
 */
@property (nonatomic, copy) NSString *endtime;
/**
 *  酒店名字
 */
@property (nonatomic, copy) NSString *hotelname;
/**
 *  价格类型
 */
@property (nonatomic, assign) NSInteger pricetype;
/**
 *  早餐数
 */
@property (nonatomic, assign) NSInteger breakfastnum;
/**
 *  创建订单时间
 */
@property (nonatomic, copy) NSString *createtime;
/**
 *  返还金额
 */
@property (nonatomic, assign) NSInteger cashbackcost;
/**
 *  订单ID
 */
@property (nonatomic, assign) NSInteger orderid;
/**
 *  退款规则
 */
@property (nonatomic, copy) NSString *refundrule;
/**
 *  是否使用了优惠券
 */
@property (nonatomic, copy) NSString *coupon;
/**
 *  订单下客单
 */
@property (nonatomic, strong) NSArray *roomorder;
/**
 *  客单id
 */
@property (nonatomic, assign) NSInteger ordermethod;
/**
 *  订单状态
 */
@property (nonatomic, assign) NSInteger orderstatus;
/**
 *  订单状态的汉字描述
 */
@property (nonatomic, copy) NSString *orderstatusname;
/**
 *  （0:无需领取；1:还未领取;  2:已经领取) 是否返现
 */
@property (nonatomic, copy) NSString *receivecashback;
/**
 *  优惠券数组
 */
@property (nonatomic, strong) NSArray *tickets;
/**
 *  酒店电话
 */
@property (nonatomic, copy) NSString *hotelphone;
/**
 *  可用优惠券张数
 */
@property (nonatomic, assign) NSInteger checkcnt;
/**
 *  酒店图片数组
 */
@property (nonatomic, strong) NSArray *hotelpic;
/**
 *  联系人微信
 */
@property (nonatomic, copy) NSString *contactsweixin;
/**
 *  联系人
 */
@property (nonatomic, copy) NSString *contacts;
/**
 *  是否评价
 */
@property (nonatomic, copy) NSString *isscore;
/**
 *  酒店纬度
 */
@property (nonatomic, assign) CGFloat longitude;
/**
 *  线上客单价
 */
@property (nonatomic, copy) NSString *onlinepay;
/**
 *  线下客单价
 */
@property (nonatomic, copy) NSString *offlinepay;
/**
 *  钱包金额
 */
@property (nonatomic, copy) NSString *walletcost;
/**
 *  联系人email
 */
@property (nonatomic, copy) NSString *contactsemail;
/**
 *  酒店价格
 */
@property (nonatomic, assign) NSInteger price;
/**
 *  酒店id
 */
@property (nonatomic, assign) NSInteger hotelid;
/**
 *  预抵时间
 */
@property (nonatomic, copy) NSString *begintime;
/**
 *  最晚保留时间
 */
@property (nonatomic, copy) NSString *retentiontime;
/**
 *  预付方式
 */
@property (nonatomic, copy) NSString *ordertype;
/**
 *  最晚退款时间
 */
@property (nonatomic, copy) NSString *lastrefundtime;
/**
 *  默认离店时间
 */
@property (nonatomic, copy) NSString *defaultleavetime;
/**
 *  是否促销
 */
@property (nonatomic, copy) NSString *promotion;
/**
 *  订单总价
 */
@property (nonatomic, assign) NSInteger totalprice;
/**
 *  酒店地址
 */
@property (nonatomic, copy) NSString *hoteladdress;
/**
 *  订单保留时间
 */
@property (nonatomic, copy) NSString *orderretentiontime;
/**
 *  优惠券使用规则
 */
@property (nonatomic, copy) NSString *uselimit;
/**
 *  订单失效时间
 */
@property (nonatomic, copy) NSString *timeouttime;
/**
 *  备注
 */
@property (nonatomic, copy) NSString *note;
/**
 * 酒店所属城市
 */
@property (nonatomic, copy) NSString *hotelcity;
/**
 *  订单明细费用数组
 */
@property (nonatomic, strong) NSArray *orderpaydetail;

@end
@interface Roomorder : NSObject
/**
 *  房费应支付金额
 */
@property (nonatomic, strong) NSArray *payprice;
/**
 *  发票抬头
 */
@property (nonatomic, copy) NSString *reeceipttitle;
/**
 *  总价
 */
@property (nonatomic, assign) NSInteger totalprice;
/**
 *  客单id
 */
@property (nonatomic, assign) NSInteger orderroomid;
/**
 *  房间号
 */
@property (nonatomic, copy) NSString *roomno;
/**
 *  是否需要支付
 */
@property (nonatomic, copy) NSString *pay;
/**
 *  房型
 */
@property (nonatomic, copy) NSString *roomtypename;
/**
 *  联系人微信
 */
@property (nonatomic, copy) NSString *contactsweixin;
/**
 *  预付方式
 */
@property (nonatomic, assign) NSInteger ordermethod;
/**
 *  价格类型
 */
@property (nonatomic, assign) NSInteger pricetype;
/**
 *  按钮数组
 */
@property (nonatomic, strong) NSArray *button;
/**
 *  预离时间
 */
@property (nonatomic, copy) NSString *endtime;
/**
 *  预抵时间
 */
@property (nonatomic, copy) NSString *begintime;
/**
 *  房型id
 */
@property (nonatomic, assign) NSInteger roomtypeid;
/**
 *  房间id
 */
@property (nonatomic, assign) NSInteger roomid;
/**
 *  酒店id
 */
@property (nonatomic, assign) NSInteger hotelid;
/**
 *  联系人email
 */
@property (nonatomic, copy) NSString *contactsemail;
/**
 *  促销代码
 */
@property (nonatomic, copy) NSString *promotionno;
/**
 *  酒店名字
 */
@property (nonatomic, copy) NSString *hotelname;
/**
 *  未知
 */
@property (nonatomic, copy) NSString *pic;
/**
 *  是否促销
 */
@property (nonatomic, copy) NSString *promotion;
/**
 *  显示状态
 */
@property (nonatomic, copy) NSString *showtitle;
/**
 *  备注
 */
@property (nonatomic, copy) NSString *note;
/**
 *  订单状态
 */
@property (nonatomic, assign) NSInteger ordertype;
/**
 *  早餐数
 */
@property (nonatomic, assign) NSInteger breakfastnum;
/**
 *  是否使用了优惠券
 */
@property (nonatomic, copy) NSString *coupon;
/**
 *  订单创建时间
 */
@property (nonatomic, copy) NSString *createtime;
/**
 *  入住人信息
 */
@property (nonatomic, strong) NSArray *checkinuser;
/**
 *  是否需要发票
 */
@property (nonatomic, copy) NSString *receipt;
/**
 *  订单天数
 */
@property (nonatomic, assign) NSInteger orderday;
/**
 *  订单联系人
 */
@property (nonatomic, copy) NSString *contacts;
/**
 *  订单联系人电话
 */
@property (nonatomic, copy) NSString *contactsphone;

@end

@interface Button : NSObject

@property (nonatomic, copy) NSString *name;

@property (nonatomic, copy) NSString *action;

@end

@interface Payprice : NSObject
//日期
@property (nonatomic, assign) NSInteger price;
//房价金额
@property (nonatomic, copy) NSString *actiondate;

@end

@interface Orderpaydetail : NSObject
/**
 *  房款/优惠券/乐住币
 */
@property (nonatomic, copy) NSString *name;
/**
 *  金额
 */
@property (nonatomic, assign) NSInteger cost;
@end

@interface Checkinuser : NSObject
/**
 *  入住人姓名
 */
@property (nonatomic, copy) NSString *cpname;
/**
 *  入住人性别
 */
@property (nonatomic, copy) NSString *cpsex;
@end

@interface Hotelpic : NSObject
/**
 * @brief
 */
@property (nonatomic, copy) NSString *name;
/**
 * @brief
 */
@property (nonatomic, strong) NSArray *pic;

@end

@interface Pic : NSObject
/**
 * @brief
 */
@property (nonatomic,copy) NSString *name;

@property (nonatomic, copy) NSString *url;

@end

