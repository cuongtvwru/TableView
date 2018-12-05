//
//  HeaderTableViewCell.m
//  WE2
//
//  Created by Home on 10/30/18.
//  Copyright © 2018 Home. All rights reserved.
//

#import "HeaderTableViewCell.h"
#import "HeaderCollectionViewCell.h"

@implementation HeaderTableViewCell
{
    NSArray *myData;
}
@synthesize collectionView;
- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
    collectionView.delegate = self;
    collectionView.dataSource = self;
    [self.collectionView registerNib:[UINib nibWithNibName:@"CVCellHeader" bundle:nil]   forCellWithReuseIdentifier: @"HeaderCVCell"];
    self.contentView.translatesAutoresizingMaskIntoConstraints = false;

    myData = [NSArray arrayWithObjects:@"Collections",@"Sales",@"Hardware", @"Dessert", @"Cereal", @"Custom", nil];
   /* UICollectionViewFlowLayout *flow = (UICollectionViewFlowLayout *)collectionView.collectionViewLayout;
    flow.estimatedItemSize = CGSizeMake(1, 1);*/
   
}
/*- (void)bindWithModel: (id)model {
    [self.contentView layoutIfNeeded];
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)targetSize withHorizontalFittingPriority:(UILayoutPriority)horizontalFittingPriority verticalFittingPriority:(UILayoutPriority)verticalFittingPriority {
    self.collectionView.frame = CGRectMake(0, 0, targetSize.width, 42);
    [collectionView layoutIfNeeded];
    return [collectionView.collectionViewLayout collectionViewContentSize];
}*/


- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return myData.count;
}
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(nonnull NSIndexPath *)indexPath {

    HeaderCollectionViewCell *cell = (HeaderCollectionViewCell *)[collectionView dequeueReusableCellWithReuseIdentifier:@"HeaderCVCell" forIndexPath:indexPath];
    if (cell == nil) {
        NSArray *nib = [[NSBundle mainBundle]loadNibNamed:@"CVCellHeader" owner:self options:nil];
        cell = [nib objectAtIndex:0];
    }
    [cell.button1 setTitle:[myData objectAtIndex:indexPath.row] forState:UIControlStateSelected];
    [cell.button1 addTarget:self action:@selector(buttonPressed:) forControlEvents:UIControlEventTouchUpInside];
    
    //Khi click hien thi underline
    [cell.button1 setAttributedTitle:[[NSAttributedString alloc] initWithString:[myData objectAtIndex:indexPath.row] attributes:@{NSUnderlineStyleAttributeName:[NSNumber numberWithInt:NSUnderlineStyleThick],NSFontAttributeName: [UIFont fontWithName:@"HelveticaNeue-Medium" size:10.0]}] forState:UIControlStateSelected];
   
    
       [cell.button1 setAttributedTitle:[[NSAttributedString alloc] initWithString:[myData objectAtIndex:indexPath.row] attributes:@{NSUnderlineStyleAttributeName:[NSNumber numberWithInt:NSUnderlinePatternSolid]}] forState:UIControlStateNormal];
    
   
    return cell;
}
- (void) buttonPressed: (UIButton *)button1 {
    NSLog(@"button");
    self.selectedButton.selected = NO;
    self.selectedButton = button1;
    self.selectedButton.selected = YES;
}

@end
