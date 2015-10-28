//
//  HotelDetailInfoModel.h
//  mike2.0
//
//  Created by 佐毅 on 15/9/17.
//  Copyright (c) 2015年 flychi. All rights reserved.
//

#import <Foundation/Foundation.h>

@class HotelDetail,TrafficdecDetail,HotelpicDetail,HotelfacilityDetail;


@interface HotelDetailInfoModel : NSObject
@property (nonatomic, strong) NSArray *HotelDetail;

@end
@interface HotelDetail : NSObject

@property (nonatomic, assign) NSInteger hotelid;

@property (nonatomic, strong) NSArray *businesszone;

@property (nonatomic, copy) NSString *ambituslifedec;

@property (nonatomic, copy) NSString *hoteldisc;

@property (nonatomic, copy) NSString *opentime;

@property (nonatomic, copy) NSString *iscashback;

@property (nonatomic, copy) NSString *hotelname;

@property (nonatomic, copy) NSString *hoteldis;

@property (nonatomic, strong) NSArray *HotelfacilityDetail;

@property (nonatomic, copy) NSString *retentiontime;

@property (nonatomic, copy) NSString *hotelcity;

@property (nonatomic, copy) NSString *defaultleavetime;

@property (nonatomic, strong) NSArray *service;

@property (nonatomic, copy) NSString *viewspotdec;

@property (nonatomic, copy) NSString *hotelprovince;

@property (nonatomic, strong) TrafficdecDetail *trafficdec;

@property (nonatomic, copy) NSString *detailaddr;

@property (nonatomic, strong) NSArray *HotelpicDetail;

@property (nonatomic, copy) NSString *hotelphone;

@end

@interface TrafficdecDetail : NSObject

@property (nonatomic, copy) NSString *bus;

@property (nonatomic, copy) NSString *metro;

@end

@interface HotelpicDetail : NSObject

@property (nonatomic, copy) NSString *name;

@property (nonatomic, copy) NSString *url;

@end

@interface HotelfacilityDetail : NSObject

@property (nonatomic, assign) NSInteger facid;

@property (nonatomic, copy) NSString *facname;

@end

