//
//  HotelFacilityModel.h
//  CollectionControllerDemo
//
//  Created by 佐毅 on 15/10/27.
//  Copyright © 2015年 上海乐住信息技术有限公司. All rights reserved.
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
