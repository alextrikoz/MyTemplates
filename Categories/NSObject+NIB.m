//
//  NSObject+NIB.m
//  MyProject
//
//  Created by Alexander on 24.11.12.
//
//

#import "NSObject+NIB.h"

@implementation NSObject (NIB)

+ (id)objectFromNib {
    NSString *nibName = NSStringFromClass([self class]);
    return [self objectFromNib:nibName];
}

+ (id)objectFromNib:(NSString *)nibName {
    NSArray *objects = [[NSBundle mainBundle] loadNibNamed:nibName owner:nil options:nil];
    for (id object in objects) {
        if ([object isKindOfClass:[self class]]) {
            return object;
        }
    }
    return nil;
}

@end
