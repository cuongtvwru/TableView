//
//  SellerTableViewCell.m
//  WE2
//
//  Created by Home on 10/31/18.
//  Copyright © 2018 Home. All rights reserved.
//

#import "SellerTableViewCell.h"
#import "SellerCollectionViewCell.h"
#import "sellerFlowLayout.h"
@implementation SellerTableViewCell {
    NSArray *myImage;
    IBOutlet NSLayoutConstraint *collectionViewHeight;
    
}
@synthesize collectionView;
- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
    collectionView.dataSource = self;
    collectionView.delegate = self;
    [self.collectionView registerNib:[UINib nibWithNibName:@"SellerCVCell" bundle:nil]   forCellWithReuseIdentifier: @"SellerCVCell"];
    myImage = [NSArray arrayWithObjects:@"7.png",@"8.png",@"9.png",@"10.png", nil];
    //collectionView.collectionViewLayout = [[sellerFlowLayout alloc] init];
    /*UICollectionViewFlowLayout *flow = (UICollectionViewFlowLayout *)collectionView.collectionViewLayout;
    flow.minimumInteritemSpacing = 5;
    flow.itemSize = CGSizeMake(92.5, 92.5);*/
    [self setHeightContraint];
    

}


//Test dynamic tableview cell
/*- (void)bindWithModel: (id)model {
    [self.contentView layoutIfNeeded];
}
- (CGSize)systemLayoutSizeFittingSize:(CGSize)targetSize withHorizontalFittingPriority:(UILayoutPriority)horizontalFittingPriority verticalFittingPriority:(UILayoutPriority)verticalFittingPriority {
    self.collectionView.frame = CGRectMake(0, 0, targetSize.width, 156.5 );
    [self.collectionView layoutIfNeeded];
    return [self.collectionView.collectionViewLayout collectionViewContentSize];
}*/

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}
#pragma mark - Func set Height Contraint
- (void)setHeightContraint {
    if (myImage.count == 0)
        collectionViewHeight.constant = 0;
}
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return myImage.count;
}
- (UICollectionViewCell *)collectionView: (UICollectionView *)collectionView cellForItemAtIndexPath:(nonnull NSIndexPath *)indexPath {
    static NSString *identifier = @"SellerCVCell";
    SellerCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:identifier forIndexPath:indexPath];
    if (cell == nil) {
        NSArray *nib = [[NSBundle mainBundle]loadNibNamed:@"SellerCVCell" owner:self options:nil];
        cell = [nib objectAtIndex:0];
    }
    cell.imageView.image = [UIImage imageNamed:[myImage objectAtIndex:indexPath.row]];
    return cell;
}

@end
