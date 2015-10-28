//
//  OrderListModel.m
//  CollectionControllerDemo
//
//  Created by 佐毅 on 15/10/27.
//  Copyright © 2015年 上海乐住信息技术有限公司. All rights reserved.
//

#import "OrderListModel.h"

@implementation OrderListModel


+ (NSDictionary *)objectClassInArray{
    return @{@"roomorder" : [Roomorder class], @"orderpaydetail" : [Orderpaydetail class], @"tickets" : [TicketsModel class],@"hotelpic" : [Hotelpic class],@"pic":[Pic class]};
}
@end
@implementation Roomorder

+ (NSDictionary *)objectClassInArray{
    return @{@"button" : [Button class], @"payprice" : [Payprice class],@"checkinuser" : [Checkinuser class]};
}

@end


@implementation Button

@end


@implementation Payprice

@end

@implementation Checkinuser

@end

@implementation Orderpaydetail

@end

@implementation Hotelpic

+ (NSDictionary *)objectClassInArray{
    return @{@"pic" : [Pic class]};
}

@end

@implementation Pic

@end

