//
//  User.m
//  Instagram
//
//  Created by Timothy Lee on 3/16/15.
//  Copyright (c) 2015 Timothy Lee. All rights reserved.
//

#import "User.h"

@implementation User

- (id)initWithDictionary:(NSDictionary *)dictionary {
    self = [super init];
    
    self.remoteId = dictionary[@"id"];
    self.username = dictionary[@"username"];
    self.profilePicUrl = [NSURL URLWithString:dictionary[@"profile_picture"]];
    
    return self;
}

@end
