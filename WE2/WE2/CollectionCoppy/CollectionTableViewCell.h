//
//  CollectionTableViewCell.h
//  WE2
//
//  Created by Home on 10/31/18.
//  Copyright © 2018 Home. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CollectionTableViewCell : UITableViewCell <UICollectionViewDataSource, UICollectionViewDelegate, UIScrollViewDelegate>
@property (strong, nonatomic) IBOutlet UICollectionView *collectionView;
@property (strong, nonatomic) IBOutlet UIPageControl *pageControl;



@end
