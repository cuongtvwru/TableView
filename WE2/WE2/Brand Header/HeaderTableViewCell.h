//
//  HeaderTableViewCell.h
//  WE2
//
//  Created by Home on 10/30/18.
//  Copyright © 2018 Home. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HeaderTableViewCell : UITableViewCell<UICollectionViewDelegate, UICollectionViewDataSource>
@property (strong, nonatomic) IBOutlet UICollectionView *collectionView;
@property (weak, nonatomic) UIButton *selectedButton;
@end
