//
//  ViewController.h
//  WE2
//
//  Created by Home on 10/30/18.
//  Copyright © 2018 Home. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITableViewDelegate, UITableViewDataSource,UITextFieldDelegate>
@property (strong, nonatomic) IBOutlet UITableView *tableView;

@property (strong, nonatomic) IBOutlet UITextField *searchTF;

@end

