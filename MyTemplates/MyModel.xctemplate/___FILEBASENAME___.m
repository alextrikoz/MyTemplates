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

+ (MFAQ *)objectWithDictionary:(NSDictionary *)dictionary {
    [dictionary removeNulls]
    MFAQ *object = [[[MFAQ alloc] init] autorelease];
    <#mapping#>
    return object;
}

@end
