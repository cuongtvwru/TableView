//
//  SellerTableViewCell.h
//  WE2
//
//  Created by Home on 10/31/18.
//  Copyright © 2018 Home. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SellerTableViewCell : UITableViewCell<UICollectionViewDelegate, UICollectionViewDataSource>
@property (strong, nonatomic) IBOutlet UICollectionView *collectionView;


@end
