//
//  HotelListModel.m
//  CollectionControllerDemo
//
//  Created by 佐毅 on 15/10/27.
//  Copyright © 2015年 上海乐住信息技术有限公司. All rights reserved.
//

#import "HotelListModel.h"
@implementation HotelListModel

+ (NSDictionary *)objectClassInArray{
    return @{@"hotelfacility" : [HotelFacilityModel class],@"hotelpic" : [Hotelpic class],@"pic":[Pic class]};
}

@end


