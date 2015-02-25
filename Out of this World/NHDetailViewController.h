//
//  NHDetailViewController.h
//  Out of this World
//
//  Created by Neil Houselander on 25/02/2015.
//  Copyright (c) 2015 Neil Houselander. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NHSpaceObject.h"

@interface NHDetailViewController : UIViewController <UITableViewDataSource,UITableViewDelegate> //conform to tableview source & table view delgate protocols
@property (strong, nonatomic) IBOutlet UITableView *tableView;
@property (strong, nonatomic) NHSpaceObject *spaceObject;

//set up the extra property space object so we can populate data from the model
@end
