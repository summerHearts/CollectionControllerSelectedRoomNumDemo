//
//  HotelDetailAutoLayoutCell.h
//  Mike
//
//  Created by 佐毅 on 15/10/26.
//  Copyright © 2015年 上海乐住信息技术有限公司. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HotelDetailRoomStatusModel.h"
@interface HotelDetailAutoLayoutCell : UICollectionViewCell
@property (weak, nonatomic) IBOutlet UIView *bgView;
@property (weak, nonatomic) IBOutlet UILabel *roomNumLabel;
@property (weak, nonatomic) IBOutlet UILabel *roomStatusLabel;
@property (weak, nonatomic) IBOutlet UIImageView *windowImage;

-(void)setIsSelect;
-(void)setCanSelect;
-(void)setCantSelect;
- (NSIndexPath *)loadCellData:(HotelRooms *)data indexPath:(NSIndexPath *)indexPath online:(NSString *)online;
@end
