//
//  HotelInfoCommentCell.h
//  mike2.0
//
//  Created by 佐毅 on 15/9/26.
//  Copyright (c) 2015年 上海乐住信息技术有限公司. All rights reserved.
//

#import "HotelStarView.h"
//#import "AOScrollerView.h"
@interface HotelInfoCommentCell : UICollectionViewCell

@property (weak, nonatomic) IBOutlet UILabel *commentNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *commentDateLabel;

@property (weak, nonatomic) IBOutlet HotelStarView *commentGradeView;

@property (weak, nonatomic) IBOutlet UILabel *commentLabel;

@property (weak, nonatomic) IBOutlet UIView *commentImagesView;

@property (weak ,nonatomic) IBOutlet UILabel *replyLabel;

@property (weak, nonatomic) IBOutlet NSLayoutConstraint *imageViewHeight;

@property (weak, nonatomic) IBOutlet NSLayoutConstraint *replayViewHeight;

-(void)loadCellData:(id)data;


@end
