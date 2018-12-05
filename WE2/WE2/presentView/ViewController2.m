//
//  ViewController2.m
//  WE2
//
//  Created by Home on 11/7/18.
//  Copyright © 2018 Home. All rights reserved.
//

#import "ViewController2.h"
#import "CollectionViewCellFeature.h"
#import "ViewController.h"
#import "FeatureTableViewCell.h"
@interface ViewController2 ()

@end

@implementation ViewController2
@synthesize myData;
@synthesize collectionView;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    collectionView.delegate = self;
    collectionView.dataSource = self;
    [self.collectionView registerNib:[UINib nibWithNibName:@"CollectionViewCellFeature" bundle:nil] forCellWithReuseIdentifier:@"Cell"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return myData.count;
}
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(nonnull NSIndexPath *)indexPath {
    static NSString *identifier = @"Cell";
    CollectionViewCellFeature *cell = [collectionView dequeueReusableCellWithReuseIdentifier:identifier forIndexPath:indexPath];
    if (cell == nil) {
        NSArray *nib = [[NSBundle mainBundle]loadNibNamed:@"CollectionViewCell" owner:self options:nil];
        cell = [nib objectAtIndex:0];
    }
    cell.imageView.image = [UIImage imageNamed:[myData objectAtIndex:indexPath.row]];
    return cell;
}

- (IBAction)doneButton:(id)sender {
    NSLog(@"Done");
    [self dismissViewControllerAnimated:YES completion:nil];
    /*UIStoryboard *storyboard =[UIStoryboard storyboardWithName:@"Main" bundle:nil];
    ViewController *vc = [storyboard instantiateViewControllerWithIdentifier:@"VC"];
    [self presentViewController:vc animated:YES completion:nil];*/
}
@end
