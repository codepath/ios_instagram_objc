//
//  User.h
//  Instagram
//
//  Created by Timothy Lee on 3/16/15.
//  Copyright (c) 2015 Timothy Lee. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface User : NSObject

@property (nonatomic, strong) NSString *remoteId;
@property (nonatomic, strong) NSString *username;
@property (nonatomic, strong) NSURL *profilePicUrl;

- (id)initWithDictionary:(NSDictionary *)dictionary;

@end
