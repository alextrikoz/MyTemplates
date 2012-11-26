//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___
//

#import "___FILEBASENAME___.h"

#import <"NSDictionary+NSNull">

@implementation ___FILEBASENAMEASIDENTIFIER___

- (void)dealloc {
    [super dealloc];
}

+ (___FILEBASENAMEASIDENTIFIER___ *)objectWithDictionary:(NSDictionary *)dictionary {
    [dictionary removeNulls]
    ___FILEBASENAMEASIDENTIFIER___ *object = [[[___FILEBASENAMEASIDENTIFIER___ alloc] init] autorelease];
    <#mapping#>
    return object;
}

@end
