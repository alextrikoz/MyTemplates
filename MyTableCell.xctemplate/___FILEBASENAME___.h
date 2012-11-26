//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___
//

#import <UIKit/UIKit.h>

@class <#MyModel#>
@class <#MyTableCell#>

@protocol ___FILEBASENAMEASIDENTIFIER___Delegate <NSObject>

<#methods#>

@end

@interface ___FILEBASENAMEASIDENTIFIER___ : UITableViewCell

+ (CGFloat)heightWithObject:(<#MyModel#> *)object;

@property (strong, nonatomic) <#MyModel#> *representedObject;

- (void)representObject:(<#MyModel#> *)representedObject;

@property (assign, nonatomic) id <___FILEBASENAMEASIDENTIFIER___Delegate> *delegate;

@end
