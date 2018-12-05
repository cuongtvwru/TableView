//
//  CollectionViewCell.h
//  WE2
//
//  Created by Home on 10/31/18.
//  Copyright © 2018 Home. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CollectionViewCell : UICollectionViewCell
@property (strong, nonatomic) IBOutlet UIImageView *imageView;
@property (strong, nonatomic) IBOutlet UILabel *titleLabel;
@property (strong, nonatomic) IBOutlet UILabel *cmtLabel;

@end
