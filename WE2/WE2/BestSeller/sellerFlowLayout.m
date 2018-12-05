//
//  sellerFlowLayout.m
//  WE2
//
//  Created by Home on 11/27/18.
//  Copyright © 2018 Home. All rights reserved.
//

#import "sellerFlowLayout.h"

@implementation sellerFlowLayout
- (instancetype)init {
    self = [super init];
    if (self)
    {
        self.minimumInteritemSpacing = 5.0;
        self.minimumLineSpacing = 5.0;
        self.scrollDirection = UICollectionViewScrollDirectionHorizontal;
        
    }
    return self;
}
- (CGSize)itemSize {
   /* NSInteger numberOfColumns = 3;
    CGFloat itemWidth = (CGRectGetWidth(self.collectionView.frame) - (numberOfColumns - 1)*(self.minimumInteritemSpacing)) / numberOfColumns;*/
    return CGSizeMake(95,95);
}
@end
