//
//  FeatureTableViewCell.h
//  WE2
//
//  Created by Home on 10/31/18.
//  Copyright © 2018 Home. All rights reserved.
//

#import <UIKit/UIKit.h>
@protocol changeCollectionview <NSObject>
- (void)loadView:(UIViewController *)controller;
@end

@interface FeatureTableViewCell : UITableViewCell<UICollectionViewDataSource, UICollectionViewDelegate>
@property (strong, nonatomic) IBOutlet UICollectionView *collectionView;

- (IBAction)presentView:(id)sender;
@property (nonatomic, retain) id<changeCollectionview> delegate;
@end
