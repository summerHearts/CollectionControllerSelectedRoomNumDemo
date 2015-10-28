//
//  HotelDetailRoomStatusModel.h
//  mike2.0
//
//  Created by 佐毅 on 15/9/15.
//  Copyright (c) 2015年 flychi. All rights reserved.
//

#import <Foundation/Foundation.h>

@class HotelRoomtype,HotelBed,HotelBeds,HotelInfrastructure,HotelRooms,HotelValueaddedfa;

@interface HotelDetailRoomStatusModel : NSObject

// @brief 酒店名称
@property (nonatomic, copy) NSString *hotelname;

// @brief 酒店切客规则类型码
@property (nonatomic, assign) NSInteger hotelrulecode;

// @brief 房型
@property (nonatomic, strong) NSArray *roomtype;

// @brief 酒店id
@property (nonatomic, assign) NSInteger hotelid;

// @brief /会否在线(T/F)
@property (nonatomic, copy) NSString *online;

// @brief 是否可见
@property (nonatomic, copy) NSString *visible;

@end

@interface HotelRoomtype : NSObject

/**
 *  @breif 房间
 */
@property (nonatomic, strong) NSArray *rooms;

/**
 *  @breif 选中房间是否在该房型中
 */
@property (nonatomic, copy) NSString *isfocus;
/**
 *  @breif  房型价格
 */
@property (nonatomic, assign) NSInteger roomtypeprice;
/**
 *  @breif 是否返现（T/F）
 */
@property (nonatomic, copy) NSString *iscashback;
/**
 *  @breif 返现金额
 */
@property (nonatomic, assign) NSInteger cashbackcost;

/**
 *  @breif 是否满房的信息展示
 */
@property (nonatomic,copy) NSString *vctxt;

/**
 *  @brief 是否特价, 0非，1特价
 */
@property (nonatomic,copy) NSString *isonpromo;

/**
 *  @breif 床宽
 */
@property (nonatomic, copy) NSString *bedlength;
/**
 *  @breif 面积
 */
@property (nonatomic, assign) NSInteger area;
/**
 *  @breif 床型
 */
@property (nonatomic, copy) NSString *bedtypename;
/**
 *  @breif 房型id
 */
@property (nonatomic, assign) NSInteger roomtypeid;
/**
 *  @breif 床数量（1：单床房，2：双床房，大于2：其他房）
 */
@property (nonatomic, assign) NSInteger bednum;
/**
 *  @breif 门市价格
 */
@property (nonatomic, assign) NSInteger roomtypepmsprice;
/**
 *  @breif 基础设施
 */
@property (nonatomic, strong) NSArray *infrastructure;
/**
 *  @breif 增值设施
 */
@property (nonatomic, strong) NSArray *valueaddedfa;
/**
*  @breif 卫浴类型
*/
@property (nonatomic, copy) NSString *bathroomtype;
/**
 *  @breif 可售房间数
 */
@property (nonatomic, assign) NSInteger vcroomnum;


@property (nonatomic, assign) NSInteger ispromoting;
/**
 *  @brief  活动开始时间，hh:mm
 */
@property (nonatomic,copy) NSString *promostarttime;

@property (nonatomic,copy) NSString *promodustartsec;



/**
 *  @brief 活动结束时间，hh:mm
 */
@property (nonatomic,copy) NSString *promoendtime;

@property (nonatomic,copy) NSString *promoduendsec;



/**
 *  @brief //促销文字
 *
 */
@property (nonatomic,copy) NSString *promotext;

/**
 *  @brief 活动开始时间，如果为空表示已进入活动时间
 */
@property (nonatomic,copy) NSString *promoduetime;

@property (nonatomic,copy) NSString *promoduesec;

 
/**
 *  @breif 床
 */
@property (nonatomic, strong) HotelBed *bed;

/**
 *  @breif 房型名称
 */
@property (nonatomic, copy) NSString *roomtypename;

@end

@interface HotelBed : NSObject

/**
 *  @brief 床数
 */
@property (nonatomic, assign) NSInteger count;

@property (nonatomic, strong) NSArray *beds;

@end

@interface HotelBeds : NSObject

/**
 *  @brief 床型(双人床，单人床)
 */
@property (nonatomic, copy) NSString *bedtypename;

/**
 *  @brief  尺寸(1.5米，1.8米)
 */
@property (nonatomic, copy) NSString *bedlength;

@end

//基础设施
@interface HotelInfrastructure : NSObject


/**
 *  @brief  基础设施名称
 */
@property (nonatomic, copy) NSString *infrastructurename;

/**
 *  @brief 基础设施id
 */
@property (nonatomic, assign) NSInteger infrastructureid;

@end

@interface HotelRooms : NSObject

/**
 *  @brief  房间是否选中
 */
@property (nonatomic, copy) NSString *isselected;

/**
 *  @brief 房间号
 */
@property (nonatomic, copy) NSString *roomno;

/**
 *  @brief  房间类型名称
 */
@property (nonatomic, copy) NSString *roomname;

/**
 *   @brief 房间状态
 */
@property (nonatomic, copy) NSString *roomstatus;

/**
 *   @brief 是否有窗
 */
@property (nonatomic, copy) NSString *haswindow;

/**
 *   @brief 房间id
 */
@property (nonatomic, assign) NSInteger roomid;

@end

//增值设施
@interface HotelValueaddedfa : NSObject

/**
 *   @brief 增值设施id
 */
@property (nonatomic, assign) NSInteger valueaddedfaid;
/**
 *   @brief 增值设施名称
 */
@property (nonatomic, copy) NSString *valueaddedfaname;

@end

