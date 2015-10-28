//
//  HotelDetailRoomStatusModel.m
//  mike2.0
//
//  Created by 佐毅 on 15/9/15.
//  Copyright (c) 2015年 flychi. All rights reserved.
//

#import "HotelDetailRoomStatusModel.h"

@implementation HotelDetailRoomStatusModel
+ (NSDictionary *)objectClassInArray{
    return @{@"roomtype" : [HotelRoomtype class]};
}
@end

@implementation HotelRoomtype
+ (NSDictionary *)objectClassInArray{
    return @{@"infrastructure" : [HotelInfrastructure class], @"rooms" : [HotelRooms class], @"valueaddedfa" : [HotelValueaddedfa class]};
}
@end

@implementation HotelBed
+ (NSDictionary *)objectClassInArray{
    return @{@"beds" : [HotelBeds class]};
}
@end

@implementation HotelBeds
@end


@implementation HotelInfrastructure
@end


@implementation HotelRooms
@end


@implementation HotelValueaddedfa
@end


