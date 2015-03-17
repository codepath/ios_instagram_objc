//
//  Photo.m
//  Instagram
//
//  Created by Timothy Lee on 3/16/15.
//  Copyright (c) 2015 Timothy Lee. All rights reserved.
//

#import "Photo.h"
#import "User.h"

@implementation Photo

- (id)initWithDictionary:(NSDictionary *)dictionary {
    self = [super init];
    
    self.remoteId = dictionary[@"id"];
    self.standardResolutionUrl = [NSURL URLWithString:[dictionary valueForKeyPath:@"images.standard_resolution.url"]];
    self.user = [[User alloc] initWithDictionary:dictionary[@"user"]];
    
    return self;
}

+ (NSArray *)photosWithDictionaries:(NSArray *)dictionaries {
    NSMutableArray *photos = [NSMutableArray array];
    
    for (NSDictionary *dictionary in dictionaries) {
        Photo *photo = [[Photo alloc] initWithDictionary:dictionary];
        [photos addObject:photo];
    }
    
    return photos;
}

@end
