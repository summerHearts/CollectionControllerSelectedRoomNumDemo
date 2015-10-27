//
//  HotelCommentIInfoCell.h
//  CollectionControllerDemo
//
//  Created by 佐毅 on 15/10/27.
//  Copyright © 2015年 上海乐住信息技术有限公司. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HotelStarView.h"
@interface HotelCommentIInfosCell : UICollectionViewCell
@property (weak, nonatomic) IBOutlet HotelStarView *startView;
@property (weak, nonatomic) IBOutlet UILabel *hotelCountLabel;
@property (weak, nonatomic) IBOutlet UILabel *connectPersonLabel;
@property (weak, nonatomic) IBOutlet UILabel *createTimeLabel;
@property (weak, nonatomic) IBOutlet UILabel *hotelCommentLabel;
@property (weak, nonatomic) IBOutlet UIView *hotelContainView;

@end

