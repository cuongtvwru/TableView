//
//  imageFlowLayout.m
//  WE2
//
//  Created by Home on 11/13/18.
//  Copyright © 2018 Home. All rights reserved.
//

#import "imageFlowLayout.h"
#import "FeatureTableViewCell.h"

@implementation imageFlowLayout
- (instancetype)init {
    self = [super init];
    if (self)
    {
        self.minimumInteritemSpacing = 6.0;
        self.minimumLineSpacing = 6.0;
        self.scrollDirection = UICollectionViewScrollDirectionVertical;
        
    }
    return self;
}
- (CGSize)itemSize {
    NSInteger numberOfColumns = 3;
    CGFloat itemWidth = (CGRectGetWidth(self.collectionView.frame) - (numberOfColumns - 1)*(self.minimumInteritemSpacing)) / numberOfColumns;
    return CGSizeMake(itemWidth, itemWidth);
    
}
@end
