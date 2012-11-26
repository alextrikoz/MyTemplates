//
//  NSObject+NIB.h
//  MyProject
//
//  Created by Alexander on 24.11.12.
//
//

#import <Foundation/Foundation.h>

@interface NSObject (NIB)

+ (id)objectFromNib;
+ (id)objectFromNib:(NSString *)nibName;

@end
