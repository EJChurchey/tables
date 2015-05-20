//
//  ViewController.m
//  tables
//
//  Created by Ej Churchey on 5/19/15.
//  Copyright (c) 2015 Ej Churchey. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property NSArray* StudentNames;

@end

NSString* CELL_NAME = @"Cell";

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    [self setStudentNames: @[@"EJ", @"Liz", @"Jared"]];
    
}
-(NSInteger) numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}
-(NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [[self StudentNames] count];
}
-(UITableViewCell*) tableView:(UITableView *) tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell* cell = [tableView dequeueReusableCellWithIdentifier: CELL_NAME];
    //if no reusable cell exists create a new one
    //nil mean empty
    
    if (cell == nil){
cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier: CELL_NAME];
        
}
    NSInteger currentRow = [indexPath row];
    NSString* currentStudent = [[self StudentNames] objectAtIndex: currentRow];
    
    [[cell textLabel] setText: currentStudent];
    return cell;
}

@end
