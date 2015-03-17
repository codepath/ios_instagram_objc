//
//  Photo.h
//  Instagram
//
//  Created by Timothy Lee on 3/16/15.
//  Copyright (c) 2015 Timothy Lee. All rights reserved.
//

#import <Foundation/Foundation.h>

@class User;

@interface Photo : NSObject

@property (nonatomic, strong) NSString *remoteId;
@property (nonatomic, strong) NSURL *standardResolutionUrl;
@property (nonatomic, strong) User *user;

- (id)initWithDictionary:(NSDictionary *)dictionary;

+ (NSArray *)photosWithDictionaries:(NSArray *)dictionaries;

@end
