//
//  FISTableViewController.h
//  facepad
//
//  Created by David Park on 6/23/16.
//  Copyright © 2016 The Flatiron School. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FISUser.h"
#import "FISTextPost.h"
#import "FISImagePost.h"
#import "FISNewsFeedTableViewController.h"

@interface FISTableViewController : UITableViewController

@property (strong, nonatomic)NSArray *userArray;

@end
