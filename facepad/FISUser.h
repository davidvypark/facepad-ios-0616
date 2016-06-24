//
//  FISUser.h
//  facepad
//
//  Created by David Park on 6/23/16.
//  Copyright © 2016 The Flatiron School. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FISUser : NSObject

@property (strong, nonatomic)NSString *username;
@property (strong, nonatomic)UIImage *profilePicture;
@property (strong, nonatomic)UIImage *coverImage;
@property (strong, nonatomic)NSArray *posts;

@end
