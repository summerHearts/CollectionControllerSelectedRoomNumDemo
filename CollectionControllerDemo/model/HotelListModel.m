//
//  HotelListModel.m
//  mike2.0
//
//  Created by Mi on 15/9/17.
//  Copyright (c) 2015年 flychi. All rights reserved.
//

#import "HotelListModel.h"

@implementation HotelListModel

+ (NSDictionary *)objectClassInArray{
    return @{@"hotelfacility" : [HotelFacilityModel class]};
}

@end


