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
#import "HotelListModel.h"
#import "CollectionControllerDemo.pch"
#import "HotelDetailRoomStatusModel.h"
#import "HotelListCell.h"
#import "MJExtension.h"
@interface HotelRoomTypeController ()<UICollectionViewDataSource, UICollectionViewDelegate,
                                      UICollectionViewDelegateFlowLayout>
@property (nonatomic,strong) HotelDetailRoomStatusModel *detailRoomStatusModel;

@property (nonatomic,strong) HotelListModel             *hotelListModel;
@property (nonatomic,strong ) NSIndexPath               *lastIndexPath;

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
    
    UINib *cellHotelCommentNib = [UINib nibWithNibName:@"HotelCommentIInfosCell" bundle:nil];
    [self.collectionView registerNib:cellHotelCommentNib forCellWithReuseIdentifier:HotelCommentIInfoCellIdentifier];

//
//    UINib *cellHotelCommentNib = [UINib nibWithNibName:@"HotelInfoCommentCell" bundle:nil];
//    [self.collectionView registerNib:cellHotelCommentNib forCellWithReuseIdentifier:HotelInfoCommentCellIdentifier];
    
    
    UINib *cellHotelListNib = [UINib nibWithNibName:@"HotelListCell" bundle:nil];
    [self.collectionView registerNib:cellHotelListNib forCellWithReuseIdentifier:HotelListCellIdentifier];
    
    UINib *filterNib = [UINib nibWithNibName:@"HotelRoomTypeFillterView" bundle:nil];
    [self.collectionView  registerNib:filterNib forSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:HotelRoomTypeFillterViewIdentifier];
    
    UINib *footerNib = [UINib nibWithNibName:@"HotelRoomTypeFooterView" bundle:nil];
    
    [self.collectionView  registerNib:footerNib forSupplementaryViewOfKind:UICollectionElementKindSectionFooter withReuseIdentifier:HotelRoomTypeFooterViewIdentifier];
    [self loadHotelRoomStatusData];
}


#pragma mark - 获取数据源
- (void)loadHotelRoomStatusData{
    
    NSString *hotelInfodataFilePath = [[NSBundle mainBundle] pathForResource:@"hotelInfo" ofType:@"json"];
    NSData *hotelInfodata = [NSData dataWithContentsOfFile:hotelInfodataFilePath];
    NSDictionary *HotelInforootDict = [NSJSONSerialization JSONObjectWithData:hotelInfodata options:NSJSONReadingAllowFragments error:nil];
    self.hotelListModel = [[HotelListModel objectArrayWithKeyValuesArray:[HotelInforootDict objectForKey:@"hotel"]] objectAtIndex:0];
    
    
    NSString *dataFilePath = [[NSBundle mainBundle] pathForResource:@"qunale" ofType:@"json"];
    NSData *data = [NSData dataWithContentsOfFile:dataFilePath];
    NSDictionary *rootDict = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:nil];
    self.detailRoomStatusModel = [[HotelDetailRoomStatusModel objectArrayWithKeyValuesArray:[rootDict objectForKey:@"hotel"]] objectAtIndex:0];
    [self.collectionView reloadData];

}
#pragma mark -collectionView的代理和数据源协议
- (UICollectionReusableView *)collectionView:(UICollectionView *)collectionView
           viewForSupplementaryElementOfKind:(NSString *)kind
                                 atIndexPath:(NSIndexPath *)indexPath
{
    UICollectionReusableView *reusableview = nil;
 if (indexPath.section <=self.detailRoomStatusModel.roomtype.count&&indexPath.section>0){
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
    if(section <=self.detailRoomStatusModel.roomtype.count &&section>0){
        HotelRoomtype *roomType  = [self.detailRoomStatusModel.roomtype objectAtIndex:section-1];
        return roomType.rooms.count;
    }else{
        return 1;
    }
}
//定义展示的Section的个数
-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return self.detailRoomStatusModel.roomtype.count+3;
}
//每个UICollectionView展示的内容
-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    @imike("数据源从0-9,注意不一致的情况");
    if (indexPath.section == 0) {
        HotelDetailAutoLayoutCell * cell = [collectionView dequeueReusableCellWithReuseIdentifier:hotelDetailInfoCellIdentifier forIndexPath:indexPath];
        return cell;

    }else if(indexPath.section<=self.detailRoomStatusModel.roomtype.count&&indexPath>0){
        HotelDetailAutoLayoutCell * cell = [collectionView dequeueReusableCellWithReuseIdentifier:HotelDetailAutoLayoutCellIdentifier forIndexPath:indexPath];
        
        HotelRoomtype *roomType  = [self.detailRoomStatusModel.roomtype objectAtIndex:indexPath.section-1];
        HotelRooms *roomItem= [roomType.rooms objectAtIndex:indexPath.item];
        NSIndexPath *returnIndexPath=[cell loadCellData:roomItem indexPath:indexPath online:_detailRoomStatusModel.online];
        if (returnIndexPath!=nil) {
            _lastIndexPath=returnIndexPath;
        }
        return cell;
        //{0,1,2,3,4,5,6,7,8}
    }else if(indexPath.section == self.detailRoomStatusModel.roomtype.count+1){
        HotelCommentIInfosCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:HotelCommentIInfoCellIdentifier forIndexPath:indexPath];
        [cell loadData:@"1"];
        return cell;
    }else{
        HotelListCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:HotelListCellIdentifier forIndexPath:indexPath];
        [cell loadCellData:@"1"];
        return cell;
    }
}
#pragma mark --UICollectionViewDelegateFlowLayout
#pragma mark -  UICollectionView DataSource

- (CGSize)collectionView:(UICollectionView *)collectionView
                  layout:(UICollectionViewLayout *)collectionViewLayout
  sizeForItemAtIndexPath:(NSIndexPath *)indexPath{
    if (indexPath.section>0&&indexPath.section<=self.detailRoomStatusModel.roomtype.count) {
         return CGSizeMake(kItemViewHeight, kItemViewWidth);
    }else if(indexPath.section == 0){
        return CGSizeMake(IPHONE_SCREEN_WIDTH, 223);
    }else if(indexPath.section == self.detailRoomStatusModel.roomtype.count+1){
        return CGSizeMake(IPHONE_SCREEN_WIDTH, 169);
    }else{
        return CGSizeMake(IPHONE_SCREEN_WIDTH, 90);

    }
}

- (CGFloat)collectionView:(UICollectionView *)collectionView
                   layout:(UICollectionViewLayout *)collectionViewLayout
minimumInteritemSpacingForSectionAtIndex:(NSInteger)section{
    
    if(section<=self.detailRoomStatusModel.roomtype.count&&section>0){
        return (IPHONE_SCREEN_WIDTH -20- 50*5)/5;
    }else{
        return (IPHONE_SCREEN_WIDTH -20- 50*5)/5;
    }
}

- (CGSize)collectionView:(UICollectionView *)collectionView
                  layout:(UICollectionViewLayout*)collectionViewLayout
referenceSizeForHeaderInSection:(NSInteger)section{
   
   if (section<=self.detailRoomStatusModel.roomtype.count&&section>0){
        return CGSizeMake([UIScreen mainScreen].bounds.size.width - 50, kFilterHeaderViewHeight);
    }else{
        return CGSizeMake([UIScreen mainScreen].bounds.size.width - 50, 0);
    }
}


- (CGSize)collectionView:(UICollectionView *)collectionView
                  layout:(UICollectionViewLayout*)collectionViewLayout
referenceSizeForFooterInSection:(NSInteger)section{
    
   if (section<=self.detailRoomStatusModel.roomtype.count&&section >0){
        return CGSizeMake(IPHONE_SCREEN_WIDTH, 30);
    }else{
        return CGSizeMake(IPHONE_SCREEN_WIDTH, 0);
    }
}

- (UIEdgeInsets)collectionView:(UICollectionView *)collectionView
                        layout:(UICollectionViewLayout *)collectionViewLayout
        insetForSectionAtIndex:(NSInteger)section{
    if (section<=self.detailRoomStatusModel.roomtype.count&&section >0) {
        return UIEdgeInsetsMake(kCollectionViewToTopMargin,
                                kCollectionViewToLeftMargin,
                                kCollectionViewToBottomtMargin,
                                kCollectionViewToRightMargin);
    }else{
        return UIEdgeInsetsMake(0,
                                0,
                                0,
                                0);
    }

}
//返回这个UICollectionView是否可以被选择
-(BOOL)collectionView:(UICollectionView *)collectionView shouldSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    return YES;
}

@end
