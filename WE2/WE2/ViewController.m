//
//  ViewController.m
//  WE2
//
//  Created by Home on 10/30/18.
//  Copyright © 2018 Home. All rights reserved.
//

#import "ViewController.h"
#import "HeaderTableViewCell.h"
#import "SellerTableViewCell.h"
#import "CollectionTableViewCell.h"
#import "FeatureTableViewCell.h"
#import "ViewController2.h"

@interface ViewController ()<changeCollectionview>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    //register Header Cell
    [self.tableView registerNib:[UINib nibWithNibName:@"HeaderCell" bundle:nil] forCellReuseIdentifier:@"HeaderTVCell"];
    //register Collection coppy
    [self.tableView registerNib:[UINib nibWithNibName:@"CollectionCell" bundle:nil] forCellReuseIdentifier:@"CollectionCell"];
    //register Brand Feature cell
    [self.tableView registerNib:[UINib nibWithNibName:@"FeatureCell" bundle:nil] forCellReuseIdentifier:@"FeatureCell"];
    //register BestSeller Cell
    [self.tableView registerNib:[UINib nibWithNibName:@"SellerCell" bundle:nil] forCellReuseIdentifier:@"SellerCell"];
    self.tableView.rowHeight = UITableViewAutomaticDimension;
    self.tableView.estimatedRowHeight = 42;


}
- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    [self.tableView reloadData];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - TableView DataSource

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 5;
}
-  (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    //Set Header Cell
    if (indexPath.row == 0) {
        HeaderTableViewCell *cell = (HeaderTableViewCell *)[tableView dequeueReusableCellWithIdentifier:@"HeaderTVCell" forIndexPath:indexPath];
        if (cell == nil) {
            NSArray *nib = [[NSBundle mainBundle]loadNibNamed:@"HeaderCell" owner:self options:nil];
            cell = [nib objectAtIndex:0];
        }
        return cell;
    }
    else if (indexPath.row == 1) {
        CollectionTableViewCell *cell1 = (CollectionTableViewCell *)[tableView dequeueReusableCellWithIdentifier:@"CollectionCell" forIndexPath:indexPath];
        if (cell1 == nil) {
            NSArray *nib = [[NSBundle mainBundle]loadNibNamed:@"CollectionCell" owner:self options:nil];
            cell1 = [nib objectAtIndex:0];
        }
        return cell1;
    }
    else if (indexPath.row == 2) {
        FeatureTableViewCell *cell2 = (FeatureTableViewCell *)[tableView dequeueReusableCellWithIdentifier:@"FeatureCell" forIndexPath:indexPath];
        if (cell2 == nil) {
            NSArray *nib = [[NSBundle mainBundle]loadNibNamed:@"FeatureCell" owner:self options:nil];
            cell2 = [nib objectAtIndex:0];
        }
        cell2.delegate = self;
        return cell2;
    }
    else if (indexPath.row == 3) {
        SellerTableViewCell *cell3 = (SellerTableViewCell *)[tableView dequeueReusableCellWithIdentifier:@"SellerCell" forIndexPath:indexPath];
        if (cell3 == nil) {
            NSArray *nib = [[NSBundle mainBundle]loadNibNamed:@"SellerCell" owner:self options:nil];
            cell3 = [nib objectAtIndex:0];
        }
        
        return cell3;
    }
    else {
        SellerTableViewCell *cell4 = (SellerTableViewCell *)[tableView dequeueReusableCellWithIdentifier:@"SellerCell" forIndexPath:indexPath];
        if (cell4 == nil) {
            NSArray *nib = [[NSBundle mainBundle]loadNibNamed:@"SellerCell" owner:self options:nil];
            cell4 = [nib objectAtIndex:0];
        }
        return cell4;
    }
}

/*- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    if (indexPath.row == 0)
        return 42;
    else if (indexPath.row == 1)
        return 150;
    else if (indexPath.row == 2 )
        return 265;
    else
        return 156.5;
    
}*/
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    if (indexPath.row == 0)
        return 42;
    else
        return UITableViewAutomaticDimension;
}
- (void)loadView:(UIViewController *)controller {
  
    [self presentViewController:controller animated:YES completion:nil];
}


//Dismiss keyboard when user pushes the return button
- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];
    return true;
}
@end
