//
//  HotelRoomTypeController.m
//  CollectionControllerDemo
//
//  Created by 佐毅 on 15/10/27.
//  Copyright © 2015年 上海乐住信息技术有限公司. All rights reserved.
//
static float const kCollectionViewToLeftMargin                = 15.f;
static float const kCollectionViewToRightMargin               = 10.f;
static float const kCollectionViewToTopMargin                 = 0.f;
static float const kCollectionViewToBottomtMargin             = 10.f;
static float const kFilterHeaderViewHeight                    = 90;
static float const kItemViewHeight                            = 50;
static float const kItemViewWidth                             = 50;

#define IPHONE_SCREEN_WIDTH         ([[UIScreen mainScreen] bounds].size.width)
#define IPHONE_SCREEN_HEIGHT        ([[UIScreen mainScreen] bounds].size.height)
#define kScreenHeight               [UIScreen mainScreen].bounds.size.height
#define kScreenWidth                [UIScreen mainScreen].bounds.size.width
#import "HotelRoomTypeController.h"
#import "HotelRoomTypeFillterView.h"
#import "HotelRoomTypeFooterView.h"
#import "HotelDetailAutoLayoutCell.h"
#import "HotelCommentIInfosCell.h"
#import "HotelInfoCommentCell.h"
@interface HotelRoomTypeController ()<UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout>

@end

@implementation HotelRoomTypeController

static  NSString *HotelDetailAutoLayoutCellIdentifier = @"HotelDetailAutoLayoutCellIdentifier";
static  NSString *HotelRoomTypeFillterViewIdentifier  = @"HotelRoomTypeFillterViewIdentifier";
static  NSString *HotelRoomTypeFooterViewIdentifier   = @"HotelRoomTypeFooterViewIdentifier";
static  NSString *hotelDetailInfoCellIdentifier       = @"hotelDetailInfoCellIdentifier";
static  NSString *HotelCommentIInfoCellIdentifier     = @"HotelCommentIInfoCellIdentifier";
static  NSString *HotelInfoCommentCellIdentifier      = @"HotelInfoCommentCellIdentifier";
- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"酒店详情";
     self.clearsSelectionOnViewWillAppear = NO;
    [self.collectionView setBackgroundColor:[UIColor whiteColor]];
    UINib *cellNib = [UINib nibWithNibName:@"HotelDetailAutoLayoutCell" bundle:nil];
    [self.collectionView registerNib:cellNib forCellWithReuseIdentifier:@"HotelDetailAutoLayoutCellIdentifier"];
    
    UINib *cellDetailNib = [UINib nibWithNibName:@"HotelDetailInfoCell" bundle:nil];
    [self.collectionView registerNib:cellDetailNib forCellWithReuseIdentifier:hotelDetailInfoCellIdentifier];
    
//    UINib *cellHotelCommentNib = [UINib nibWithNibName:@"HotelCommentIInfosCell" bundle:nil];
//    [self.collectionView registerNib:cellHotelCommentNib forCellWithReuseIdentifier:HotelCommentIInfoCellIdentifier];
//
    
    UINib *cellHotelCommentNib = [UINib nibWithNibName:@"HotelInfoCommentCell" bundle:nil];
    [self.collectionView registerNib:cellHotelCommentNib forCellWithReuseIdentifier:HotelInfoCommentCellIdentifier];
    
    
    UINib *filterNib = [UINib nibWithNibName:@"HotelRoomTypeFillterView" bundle:nil];
    [self.collectionView  registerNib:filterNib forSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:HotelRoomTypeFillterViewIdentifier];
    
    UINib *footerNib = [UINib nibWithNibName:@"HotelRoomTypeFooterView" bundle:nil];
    
    [self.collectionView  registerNib:footerNib forSupplementaryViewOfKind:UICollectionElementKindSectionFooter withReuseIdentifier:HotelRoomTypeFooterViewIdentifier];
    
}

#pragma mark -collectionView的代理和数据源协议
- (UICollectionReusableView *)collectionView:(UICollectionView *)collectionView
           viewForSupplementaryElementOfKind:(NSString *)kind
                                 atIndexPath:(NSIndexPath *)indexPath
{
    UICollectionReusableView *reusableview = nil;
 if (indexPath.section <3&&indexPath.section>0){
        if ([kind isEqual:UICollectionElementKindSectionHeader]) {
            HotelRoomTypeFillterView *hotelRoomTypeFillterView =
            [collectionView dequeueReusableSupplementaryViewOfKind:UICollectionElementKindSectionHeader
                                               withReuseIdentifier:HotelRoomTypeFillterViewIdentifier
                                                      forIndexPath:indexPath];
            reusableview =hotelRoomTypeFillterView;
        }else if([kind isEqual:UICollectionElementKindSectionFooter]){
            HotelRoomTypeFooterView *hotelRoomTypeFooterView =  [collectionView dequeueReusableSupplementaryViewOfKind:UICollectionElementKindSectionFooter withReuseIdentifier:HotelRoomTypeFooterViewIdentifier
                                                                                                          forIndexPath:indexPath];
            reusableview =hotelRoomTypeFooterView;
        }
            return reusableview;
    }else{
        if ([kind isEqual:UICollectionElementKindSectionHeader]) {
            HotelRoomTypeFillterView *hotelRoomTypeFillterView =
            [collectionView dequeueReusableSupplementaryViewOfKind:UICollectionElementKindSectionHeader
                                               withReuseIdentifier:HotelRoomTypeFillterViewIdentifier
                                                      forIndexPath:indexPath];
            hotelRoomTypeFillterView.frame = CGRectMake(0, 0, 0, 0);
            reusableview =hotelRoomTypeFillterView;
        }else if([kind isEqual:UICollectionElementKindSectionFooter]){
            HotelRoomTypeFooterView *hotelRoomTypeFooterView =  [collectionView dequeueReusableSupplementaryViewOfKind:UICollectionElementKindSectionFooter withReuseIdentifier:HotelRoomTypeFooterViewIdentifier
                                                                                                          forIndexPath:indexPath];
            hotelRoomTypeFooterView.frame = CGRectMake(0, 0, 0, 0);
            reusableview =hotelRoomTypeFooterView;
        }
        return reusableview;
    }
    
}

//定义展示的UICollectionViewCell的个数
-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    switch (section) {
        //酒店基本信息
        case 0:
            return 1;
            break;
        //酒店房态信息
        case 1:
            return 5;
            break;
        case 2:
            return 5;
            break;
        //酒店评价
        case 3:
            return 1;
            break;
        //附近酒店
        case 4:
            return 1;
            break;
        default:
            return 0;
            break;
    }
}
//定义展示的Section的个数
-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return 5;
}
//每个UICollectionView展示的内容
-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.section == 0) {
        HotelDetailAutoLayoutCell * cell = [collectionView dequeueReusableCellWithReuseIdentifier:hotelDetailInfoCellIdentifier forIndexPath:indexPath];
        return cell;

    }else if(indexPath.section<3&&indexPath>0){
        HotelDetailAutoLayoutCell * cell = [collectionView dequeueReusableCellWithReuseIdentifier:HotelDetailAutoLayoutCellIdentifier forIndexPath:indexPath];
        return cell;
    }else{
        HotelInfoCommentCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:HotelInfoCommentCellIdentifier forIndexPath:indexPath];
        [cell loadCellData:@"1"];
        return cell;
    }
}
#pragma mark --UICollectionViewDelegateFlowLayout
#pragma mark -  UICollectionView DataSource

- (CGSize)collectionView:(UICollectionView *)collectionView
                  layout:(UICollectionViewLayout *)collectionViewLayout
  sizeForItemAtIndexPath:(NSIndexPath *)indexPath{
    if (indexPath.section>0&&indexPath.section<3) {
         return CGSizeMake(kItemViewHeight, kItemViewWidth);
    }else if(indexPath.section == 0){
        return CGSizeMake(IPHONE_SCREEN_WIDTH, 230);
    }else{
        return CGSizeMake(IPHONE_SCREEN_WIDTH, 169);
    }
}

- (CGFloat)collectionView:(UICollectionView *)collectionView
                   layout:(UICollectionViewLayout *)collectionViewLayout
minimumInteritemSpacingForSectionAtIndex:(NSInteger)section{
    if (section == 0) {
        return 0;
    }else{
        return (IPHONE_SCREEN_WIDTH -20- 50*5)/5;
    }
}

- (CGSize)collectionView:(UICollectionView *)collectionView
                  layout:(UICollectionViewLayout*)collectionViewLayout
referenceSizeForHeaderInSection:(NSInteger)section{
   
   if (section<3&&section>0){
        return CGSizeMake([UIScreen mainScreen].bounds.size.width - 50, kFilterHeaderViewHeight);
    }else{
        return CGSizeMake([UIScreen mainScreen].bounds.size.width - 50, 0);
    }
}


- (CGSize)collectionView:(UICollectionView *)collectionView
                  layout:(UICollectionViewLayout*)collectionViewLayout
referenceSizeForFooterInSection:(NSInteger)section{
    
   if (section<3&&section >0){
        return CGSizeMake(IPHONE_SCREEN_WIDTH, 30);
    }else{
        return CGSizeMake(IPHONE_SCREEN_WIDTH, 0);
    }
}

- (UIEdgeInsets)collectionView:(UICollectionView *)collectionView
                        layout:(UICollectionViewLayout *)collectionViewLayout
        insetForSectionAtIndex:(NSInteger)section{
    if (section<3&&section >0) {
        return UIEdgeInsetsMake(kCollectionViewToTopMargin,
                                kCollectionViewToLeftMargin,
                                kCollectionViewToBottomtMargin,
                                kCollectionViewToRightMargin);
    }else{
        return UIEdgeInsetsMake(kCollectionViewToTopMargin,
                                0,
                                kCollectionViewToBottomtMargin,
                                0);
    }

}
//返回这个UICollectionView是否可以被选择
-(BOOL)collectionView:(UICollectionView *)collectionView shouldSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    return YES;
}

@end
