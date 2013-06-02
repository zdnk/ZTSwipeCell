//
//  ZTViewController.m
//  ZTSwipeCellDemo
//
//  Created by Zdeněk Topič on 14.05.13.
//  Copyright (c) 2013 Zdenek Topic. All rights reserved.
//

#import "ZTViewController.h"
#import "ZTSwipeCell.h"

@interface ZTViewController ()

@end

@implementation ZTViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    UIView *backgroundView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 320, 480)];
    [backgroundView setBackgroundColor:[UIColor colorWithRed:227.0 / 255.0 green:227.0 / 255.0 blue:227.0 / 255.0 alpha:1.0]];
    [self.tableView setBackgroundView:backgroundView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    ZTSwipeCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    cell.textLabel.text = @"test";
    cell.detailTextLabel.text = @"test";
    
    ZTSwipeCellAction* action = [[ZTSwipeCellAction alloc]
                                 initWithPercent:0.2
                                 direction:ZTSwipeCellDirectionLeft
                                 color:[UIColor greenColor]
                                 image:[UIImage imageNamed:@"icon-check"]
                                 mode:ZTSwipeCellModeSwitch
                                 tag:nil];
    
    ZTSwipeCellAction* action1 = [[ZTSwipeCellAction alloc]
                                 initWithPercent:0.5
                                 direction:ZTSwipeCellDirectionLeft
                                 color:[UIColor redColor]
                                 image:[UIImage imageNamed:@"icon-cross"]
                                 mode:ZTSwipeCellModeExit
                                 tag:nil];
    
    ZTSwipeCellAction* action2 = [[ZTSwipeCellAction alloc]
                                 initWithPercent:0.2
                                 direction:ZTSwipeCellDirectionRight
                                 color:[UIColor yellowColor]
                                 image:[UIImage imageNamed:@"icon-check"]
                                 mode:ZTSwipeCellModeExit
                                 tag:nil];
    
    ZTSwipeCellAction* action3 = [[ZTSwipeCellAction alloc]
                                  initWithPercent:0.5
                                  direction:ZTSwipeCellDirectionRight
                                  color:[UIColor orangeColor]
                                  image:[UIImage imageNamed:@"icon-cross"]
                                  mode:ZTSwipeCellModeSwitch
                                  tag:nil];
    
    [cell addAction:action];
    [cell addAction:action1];
    [cell addAction:action2];
    [cell addAction:action3];
    
    cell.contentView.backgroundColor = [UIColor whiteColor];
    cell.backgroundView.backgroundColor = [UIColor blackColor];
    
    return cell;
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Navigation logic may go here. Create and push another view controller.
    /*
     <#DetailViewController#> *detailViewController = [[<#DetailViewController#> alloc] initWithNibName:@"<#Nib name#>" bundle:nil];
     // ...
     // Pass the selected object to the new view controller.
     [self.navigationController pushViewController:detailViewController animated:YES];
     */
}

@end