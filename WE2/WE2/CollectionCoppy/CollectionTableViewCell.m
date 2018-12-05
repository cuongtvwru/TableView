//
//  CollectionTableViewCell.m
//  WE2
//
//  Created by Home on 10/31/18.
//  Copyright © 2018 Home. All rights reserved.
//

#import "CollectionTableViewCell.h"
#import "CollectionViewCell.h"
@implementation CollectionTableViewCell {
    NSArray *myImage;
    NSArray *myData1;
    NSArray *myData2;
}
@synthesize collectionView;
@synthesize pageControl;

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
    collectionView.dataSource = self;
    collectionView.delegate = self;
    [self.collectionView registerNib:[UINib nibWithNibName:@"CollectionViewCell" bundle:nil]   forCellWithReuseIdentifier: @"CollectionViewCell"];
    myImage = [NSArray arrayWithObjects:@"Group 2.png",@"1.png",@"2.png", nil];
    myData1 = [NSArray arrayWithObjects:@"Collection",@"a",@"b", nil];
    myData2 = [NSArray arrayWithObjects:@"discover set ups",@"s",@"a", nil];
    
    

    
    

}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return myImage.count;
}
- (UICollectionViewCell *)collectionView: (UICollectionView *)collectionView cellForItemAtIndexPath:(nonnull NSIndexPath *)indexPath {
    static NSString *identifier = @"CollectionViewCell";
    CollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:identifier forIndexPath:indexPath];
    if (cell == nil) {
        NSArray *nib = [[NSBundle mainBundle]loadNibNamed:@"CollectionViewCell" owner:self options:nil];
        cell = [nib objectAtIndex:0];
    }
    cell.imageView.image = [UIImage imageNamed:[myImage objectAtIndex:indexPath.row]];
    cell.titleLabel.text = [myData1 objectAtIndex:indexPath.row];
    cell.cmtLabel.text = [myData2 objectAtIndex:indexPath.row];

    return cell;
}
// pageControl
/*- (void)collectionView:(UICollectionView *)collectionView willDisplayCell:(UICollectionViewCell *)cell forItemAtIndexPath:(NSIndexPath *)indexPath {
    pageControl.currentPage = indexPath.row;
}*/

/*- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView {
    pageControl.currentPage = (int)(scrollView.contentOffset.x + scrollView.frame.size.width/2)/(int)(scrollView.frame.size.width);
    CGRect visibleRect = (CGRect){.origin = self.collectionView.contentOffset, .size = self.collectionView.bounds.size};
    CGPoint visiblePoint = CGPointMake(CGRectGetMidX(visibleRect), CGRectGetMidY(visibleRect));
    NSIndexPath *visibleIndexPath;
    if ((visibleIndexPath = [collectionView indexPathForItemAtPoint:visiblePoint])) {
        pageControl.currentPage = visibleIndexPath.row;
        
    }
}*/
- (void)scrollViewDidScroll:(UIScrollView *)scrollView {
    pageControl.currentPage = (int)(scrollView.contentOffset.x + scrollView.frame.size.width/2)/(int)(scrollView.frame.size.width);
  

    /*CGRect visibleRect = (CGRect){.origin = self.collectionView.contentOffset, .size = self.collectionView.bounds.size};
    CGPoint visiblePoint = CGPointMake(CGRectGetMidX(visibleRect), CGRectGetMidY(visibleRect));
    NSIndexPath *visibleIndexPath;
    if ((visibleIndexPath = [collectionView indexPathForItemAtPoint:visiblePoint])) {
        pageControl.currentPage = visibleIndexPath.row;
}*/
   
    
}
@end
    
