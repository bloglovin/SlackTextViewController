//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___
//

#import "___FILEBASENAME___.h"

@interface ___FILEBASENAMEASIDENTIFIER___ ()

@end

@implementation ___FILEBASENAMEASIDENTIFIER___


#pragma mark - Initializer

- (id)init
{
#warning Potentially incomplete method implementation.
    self = [super initWithCollectionViewLayout:<#(UICollectionViewLayout *)#>];
    if (self) {
        
    }
    return self;
}

/*
// Uncomment if you are using Storyboard.
// You don't need to call initWithCoder: anymore
+ (UICollectionViewLayout *)collectionViewLayoutForCoder:(NSCoder *)decoder
{
    return <#(UICollectionViewLayout *)#>;
}
*/

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Do view setup here.
}


#pragma mark - SLKTextViewController Events

- (void)didChangeKeyboardStatus:(SLKKeyboardStatus)status
{
    // Notifies the view controller that the keyboard changed status.
    // Calling super does nothing
}

- (void)textWillUpdate
{
    // Notifies the view controller that the text will update.
    // Calling super does nothing
    
    [super textWillUpdate];
}

- (void)textDidUpdate:(BOOL)animated
{
    // Notifies the view controller that the text did update.
    // Must call super
    
    [super textDidUpdate:animated];
}

- (BOOL)canPressRightButton
{
    // Asks if the right button can be pressed
    
    return [super canPressRightButton];
}

- (void)didPressRightButton:(id)sender
{
    // Notifies the view controller when the right button's action has been triggered, manually or by using the keyboard return key.
    // Must call super
    
    // This little trick validates any pending auto-correction or auto-spelling just after hitting the 'Send' button
    [self.textView refreshFirstResponder];
    
    [super didPressRightButton:sender];
}

/*
// Uncomment these methods for aditional events
- (void)didPressLeftButton:(id)sender
{
    // Notifies the view controller when the left button's action has been triggered, manually.
    
    [super didPressLeftButton:sender];
}

- (void)didPasteMediaContent:(NSDictionary *)userInfo
{
    // Notifies the view controller when a user did paste a media content inside of the text view
    // Calling super does nothing
}

- (void)willRequestUndo
{
    // Notification about when a user did shake the device to undo the typed text
    
    [super willRequestUndo];
}
 */

#pragma mark - SLKTextViewController Edition

/*
// Uncomment these methods to enable edit mode
- (void)didCommitTextEditing:(id)sender
{
    // Notifies the view controller when tapped on the right "Accept" button for commiting the edited text
 
    [super didCommitTextEditing:sender];
}

- (void)didCancelTextEditing:(id)sender
{
    // Notifies the view controller when tapped on the left "Cancel" button
 
    [super didCancelTextEditing:sender];
}
*/

#pragma mark - SLKTextViewController Autocompletion

/*
// Uncomment these methods to enable autocompletion mode
- (BOOL)canShowAutoCompletion
{
    // Asks of the autocompletion view should be shown
 
    return NO;
}

- (CGFloat)heightForAutoCompletionView
{
    // Asks for the height of the autocompletion view
 
    return 0.0;
}
*/


#pragma mark <UICollectionViewDataSource>

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
#warning Incomplete method implementation -- Return the number of sections
    
    return 0;
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
#warning Incomplete method implementation -- Return the number of items in the section
    
    return 0;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:<#@"reuseIdentifier"#> forIndexPath:indexPath];
    
    // Configure the cell
    
    return cell;
}


#pragma mark <UICollectionViewDelegate>

/*
// Uncomment this method to specify if the specified item should be highlighted during tracking
- (BOOL)collectionView:(UICollectionView *)collectionView shouldHighlightItemAtIndexPath:(NSIndexPath *)indexPath
{
    return YES;
}
*/

/*
// Uncomment this method to specify if the specified item should be selected
- (BOOL)collectionView:(UICollectionView *)collectionView shouldSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    return YES;
}
*/

/*
// Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
- (BOOL)collectionView:(UICollectionView *)collectionView shouldShowMenuForItemAtIndexPath:(NSIndexPath *)indexPath
{
    return NO;
}

- (BOOL)collectionView:(UICollectionView *)collectionView canPerformAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender
{
    return NO;
}

- (void)collectionView:(UICollectionView *)collectionView performAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender
{
    
}
*/


#pragma mark - <UITableViewDataSource>

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
#warning Potentially incomplete method implementation.
    // Returns the number of sections.
    
    return 0;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
#warning Incomplete method implementation.
    // Returns the number of rows in the section.
    
    if ([tableView isEqual:self.autoCompletionView]) {
        return 0;
    }
    
    return 0;
}

/*
// Uncomment these methods to configure the cells
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:<#@"reuseIdentifier"#> forIndexPath:indexPath];

    if ([tableView isEqual:self.autoCompletionView]) {
        // Configure the autocompletion cell...
    }
    
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Returns the height each row
 
    if ([tableView isEqual:self.autoCompletionView]) {
        return 0;
    }
}
*/


#pragma mark - <UITableViewDelegate>

/*
// Uncomment this method to handle the cell selection
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if ([tableView isEqual:self.autoCompletionView]) {
 
        [self acceptAutoCompletionWithString:<#@"any_string"#>];
    }
}
 */


#pragma mark - View lifeterm

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

- (void)dealloc
{
    
}

@end
