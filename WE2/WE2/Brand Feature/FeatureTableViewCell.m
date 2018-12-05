//
//  FeatureTableViewCell.m
//  WE2
//
//  Created by Home on 10/31/18.
//  Copyright © 2018 Home. All rights reserved.
//

#import "FeatureTableViewCell.h"
#import "FeatureCellCollectionViewCell.h"
#import "ViewController2.h"
#import "imageFlowLayout.h"

@interface FeatureTableViewCell()
@property (strong, nonatomic) IBOutlet NSLayoutConstraint *collectionViewHeight;
@property (strong,nonatomic) NSArray *myImage;
@end

@implementation FeatureTableViewCell

@synthesize collectionView;
@synthesize myImage;
- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
    collectionView.dataSource = self;
    collectionView.delegate = self;
    //register file nib
    [self.collectionView registerNib:[UINib nibWithNibName:@"FeatureCVCell" bundle:nil]   forCellWithReuseIdentifier: @"FeatureCVCell"];

    myImage= [NSArray arrayWithObjects:@"3.png", @"2.png", @"1.png",@"6.png",@"5.png", @"4.png", nil];
    [self setHeightForCollectonView];
    
    
    //collectionView.collectionViewLayout = [[imageFlowLayout alloc] init];
    //collectionView.scrollEnabled = NO;

    
   /* UICollectionViewFlowLayout *flow = (UICollectionViewFlowLayout *)self.collectionView.collectionViewLayout;
    flow.estimatedItemSize= CGSizeMake(1, 1);*/


}
/*- (void)bindWithModel: (id)model {
    [self.contentView layoutIfNeeded];
}
- (CGSize)systemLayoutSizeFittingSize:(CGSize)targetSize withHorizontalFittingPriority:(UILayoutPriority)horizontalFittingPriority verticalFittingPriority:(UILayoutPriority)verticalFittingPriority {
    [collectionView layoutIfNeeded];
    collectionView.frame = CGRectMake(11.5, 8,196,196);
    
    return [collectionView.collectionViewLayout collectionViewContentSize];
    
    //return [self.collectionView.collectionViewLayout collectionViewContentSize];
}*/

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
    // Configure the view for the selected state
}

#pragma mark - Private Func
-(void)setHeightForCollectonView {
    if (myImage.count == 0) {
        self.collectionViewHeight.constant = 0;
    }
}
#pragma mark - CollectionView data source

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    if (myImage.count > 6)
        return 6; //Hien thi toi da 6 phan tu nen collectionview
    else
        return myImage.count;
}
- (UICollectionViewCell *)collectionView: (UICollectionView *)collectionView cellForItemAtIndexPath:(nonnull NSIndexPath *)indexPath {
    static NSString *identifier = @"FeatureCVCell";
    FeatureCellCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:identifier forIndexPath:indexPath];
    if (cell == nil) {
        NSArray *nib = [[NSBundle mainBundle]loadNibNamed:@"FeatureCVCell" owner:self options:nil];
        cell = [nib objectAtIndex:0];
    }
   
        cell.imageView.image = [UIImage imageNamed:[myImage objectAtIndex:indexPath.row]];
    return cell;
}

- (IBAction)presentView:(id)sender {
    ViewController2 *v2 = [[ViewController2 alloc] initWithNibName:@"ViewController2" bundle:nil];
    v2.myData = myImage;
    [self.delegate loadView:v2];
}







@end
