//
//  HotelDetailInfoModel.m
//  mike2.0
//
//  Created by 佐毅 on 15/9/17.
//  Copyright (c) 2015年 flychi. All rights reserved.
//

#import "HotelDetailInfoModel.h"

@implementation HotelDetailInfoModel


+ (NSDictionary *)objectClassInArray{
    return @{@"HotelDetail" : [HotelDetail class]};
}


@end
@implementation HotelDetail

+ (NSDictionary *)objectClassInArray{
    return @{@"HotelpicDetail" : [HotelpicDetail class], @"HotelfacilityDetail" : [HotelfacilityDetail class]};
}

@end


@implementation TrafficdecDetail

@end


@implementation HotelpicDetail

@end


@implementation HotelfacilityDetail

@end



