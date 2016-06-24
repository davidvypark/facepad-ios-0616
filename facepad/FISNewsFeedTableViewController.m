//
//  FISNewsFeedTableViewController.m
//  facepad
//
//  Created by David Park on 6/23/16.
//  Copyright © 2016 The Flatiron School. All rights reserved.
//

#import "FISNewsFeedTableViewController.h"

@interface FISNewsFeedTableViewController ()

@end

@implementation FISNewsFeedTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.user.posts count] + 1;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [[UITableViewCell alloc] init];
    
    if (indexPath.row == 0) {
        cell = [tableView dequeueReusableCellWithIdentifier:@"coverImage" forIndexPath:indexPath];
        cell.imageView.image = self.user.coverImage;
        
    } else {
        FISFeedPost *post = self.user.posts[indexPath.row - 1];
        if ([post isKindOfClass:[FISTextPost class]]) {
            cell = [tableView dequeueReusableCellWithIdentifier:@"text" forIndexPath:indexPath];
            FISTextPost *textPost = (FISTextPost *)post;
            cell.textLabel.text = textPost.text;
            
        } else if ([post isKindOfClass:[FISImagePost class]]) {
            cell = [tableView dequeueReusableCellWithIdentifier:@"image" forIndexPath:indexPath];
            FISImagePost *imagePost = (FISImagePost *)post;
            cell.imageView.image = imagePost.image;
        }
        
    }
    
    return cell;
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
