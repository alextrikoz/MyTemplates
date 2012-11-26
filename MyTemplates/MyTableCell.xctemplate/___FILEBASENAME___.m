//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___
//

#import "___FILEBASENAME___.h"

#import "<#MyObject#>.h"

@interface ___FILEBASENAMEASIDENTIFIER___ () 

@end

@implementation ___FILEBASENAMEASIDENTIFIER___

- (void)dealloc {
    [_representedObject release];
    [super dealloc];
}

- (void)awakeFromNib {
    [super awakeFromNib];

    <#first makeup#>
}

+ (CGFloat)heightWithObject:(<#MyModel#> *)object {
    return <#height#>;
}

- (void)representObject:(<#MyModel#> *)object {
    self.representedObject = object;
    
    <#second makeup#>
}

@end
