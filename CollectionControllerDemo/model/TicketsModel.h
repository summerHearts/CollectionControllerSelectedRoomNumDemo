//
//  CouPonModel.h
//  CollectionControllerDemo
//
//  Created by 佐毅 on 15/10/27.
//  Copyright © 2015年 上海乐住信息技术有限公司. All rights reserved.
//
#import <Foundation/Foundation.h>

@interface TicketsModel : NSObject

/**
 *  @brief 优惠券ids
 */
@property (nonatomic,copy) NSString *ids;

/**
 *  @brief 描述
 */
@property (nonatomic,copy) NSString *descriptions;

/**
 * @brief 可以使用
 */
@property (nonatomic, copy) NSString *check;
/**
 * @brief 开始时间
 */
@property (nonatomic, copy) NSString *begintime;
/**
 * @brief 结束时间
 */
@property (nonatomic, copy) NSString *endtime;
/**
 * @brief 是否选中
 */
@property (nonatomic, copy) NSString  *select;
/**
 * @brief 是否是优惠券
 */
@property (nonatomic, copy) NSString *isticket;
/**
 * @brief  线下支付金额
 */
@property (nonatomic, assign) NSInteger offlinesubprice;
/**
 * @brief 类型
 */
@property (nonatomic, assign) NSInteger type;
/**
 * @brief 用户使用限制
 */
@property (nonatomic, copy) NSString *uselimit;
/**
 * @brief 减价
 */
@property (nonatomic, assign) NSInteger subprice;
/**
 * @brief 活动类型id
 */
@property (nonatomic, assign) NSInteger activityid;
/**
 * @brief  优惠券名
 */
@property (nonatomic, copy) NSString *name;

@property (nonatomic,assign) BOOL isused;

@property (nonatomic,assign)NSInteger status;

@property (nonatomic,copy) NSString * statusname;


@end
