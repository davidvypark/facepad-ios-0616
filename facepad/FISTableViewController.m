//
//  FISTableViewController.m
//  facepad
//
//  Created by David Park on 6/23/16.
//  Copyright © 2016 The Flatiron School. All rights reserved.
//

#import "FISTableViewController.h"

@interface FISTableViewController ()

@end

@implementation FISTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    FISUser *user1 = [[FISUser alloc] init];
    FISTextPost *textPost1 = [[FISTextPost alloc] init];
    FISImagePost *imagePost1 = [[FISImagePost alloc] init];
    user1.username = @"davidvypark";
    user1.profilePicture = [UIImage imageNamed:@"user1"];
    user1.coverImage = [UIImage imageNamed:@"user1cover"];
    textPost1.text = @"Hello This is my first post";
    imagePost1.image = [UIImage imageNamed:@"image1"];
    user1.posts = @[textPost1, imagePost1];
    
    FISUser *user2 = [[FISUser alloc] init];
    FISTextPost *textPost2 = [[FISTextPost alloc] init];
    FISImagePost *imagePost2 = [[FISImagePost alloc] init];
    user2.username = @"wakawakawaka";
    user2.profilePicture = [UIImage imageNamed:@"user2"];
    user2.coverImage = [UIImage imageNamed:@"coverimage"];
    textPost2.text = @"Come thru its lit!!!";
    imagePost2.image = [UIImage imageNamed:@"image2"];
    user2.posts = @[textPost2, imagePost2];
    
    self.userArray = @[user1, user2];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return [self.userArray count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    
    FISUser *currentUser = self.userArray[indexPath.row];
    cell.textLabel.text = currentUser.username;
    
    return cell;
}


-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    FISNewsFeedTableViewController *destinationVC = [segue destinationViewController];
    
    NSIndexPath *clickedIndexPath = [self.tableView indexPathForSelectedRow];
    destinationVC.user = self.userArray[clickedIndexPath.row];
    
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
