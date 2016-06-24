//
//  FISNewsFeedTableViewController.h
//  facepad
//
//  Created by David Park on 6/23/16.
//  Copyright © 2016 The Flatiron School. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FISUser.h"
#import "FISImagePost.h"
#import "FISTextPost.h"

@interface FISNewsFeedTableViewController : UITableViewController

@property (strong, nonatomic)FISUser *user;

@end
