//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___
//

#import "___FILEBASENAME___.h"
//Categories
#import "NSObject+NIB.h"
//Objects
#import "<#MyObject#>.h"
//Views
#import "<#MyCell#>.h"

@interface ___FILEBASENAMEASIDENTIFIER___ () <UITableViewDataSource, UITableViewDelegate>

@property (retain, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation ___FILEBASENAMEASIDENTIFIER___

- (void)viewDidUnload {
    [self setTableView:nil];
    [super viewDidUnload];
}

- (void)dealloc {
    [_tableView release];
    [_representedObjects release];
    [super dealloc];
}

#pragma mark - UITableViewDataSource and UITableViewDelegate

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return [<#MyCell#> heightWithObject:[self.representedObjects objectAtIndex:indexPath.row]];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.representedObjects.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath  {
    <#MyCell#> *cell = [self.tableView dequeueReusableCellWithIdentifier:NSStringFromClass(<#MyCell#>.class)];
    if (cell == nil) {
        cell = <#MyCell#>.objectFromNib;
    }
    <#MyObject#> *representedObject = [self.representedObjects objectAtIndex:indexPath.row];
    [cell representObject:representedObject];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [self.tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    <#MyObject#> *representedObject = [self.representedObjects objectAtIndex:indexPath.row];
    
    <#MyDetailedScreen#> *detailedScreen = [[[<#MyDetailedScreen#> alloc] initWithNibName:@"<#MyDetailedScreen#>" bundle:nil] autorelease];
    detailedScreen.representedObject = representedObject;
    [self.navigationViewController pushViewController:detailedScreen];
}

@end
