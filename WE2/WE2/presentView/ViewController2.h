//
//  ViewController2.h
//  WE2
//
//  Created by Home on 11/7/18.
//  Copyright © 2018 Home. All rights reserved.
//

#import <UIKit/UIKit.h>
@class ViewController2;
@protocol ViewController2Delegate <NSObject>
- (void) ViewController2DisFinish:(ViewController2 *)viewController2;
@end

@interface ViewController2 : UIViewController <UICollectionViewDelegate, UICollectionViewDataSource>
- (IBAction)doneButton:(id)sender;
@property (weak, nonatomic) id<ViewController2Delegate> delegate;
@property (nonatomic,strong) NSArray *myData;

@property (strong, nonatomic) IBOutlet UICollectionView *collectionView;

@end
