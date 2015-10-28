//
//  HotelFacilityModel.h
//  mike2.0
//
//  Created by Mi on 15/9/14.
//  Copyright (c) 2015年 flychi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HotelFacilityModel : NSObject

/**
 *  设施/服务 编号
 */

@property (nonatomic, assign) NSInteger facid;

/**
 *  设施/服务 类型
 */

@property (nonatomic, assign) NSInteger factype;

/**
 *  设施/服务 名称
 */

@property (nonatomic, copy) NSString *facname;

@end
