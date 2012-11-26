//
//  NSDictionary+NSNull.m
//  MyProject
//
//  Created by Alexander on 26.11.12.
//
//

#import "NSDictionary+NSNull.h"

@implementation NSDictionary (NSNull)

- (NSDictionary *)unnullable {
    self = [[self mutableCopy] autorelease];
    NSArray *nulls = [self allKeysForObject:[NSNull null]];
    for (id key in nulls) {
        [(NSMutableDictionary *)self removeObjectForKey:key];
    }
    return self;
}

@end
