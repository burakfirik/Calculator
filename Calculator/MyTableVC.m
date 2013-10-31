//
//  MyTableVC.m
//  Calculator
//
//  Created by burak firik on 10/30/13.
//  Copyright (c) 2013 Razeware LLC. All rights reserved.
//

#import "MyTableVC.h"

@interface MyTableVC ()

@end

@implementation MyTableVC

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.tableDataSource=@[@"Burak", @"Meryem", @"Ahmad",@"Selam"];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)backC:(UIButton *)sender{

    [self dismissViewControllerAnimated:YES completion:nil];
}

#pragma mark-
#pragma mark UItableView Delegates &datasources

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 3;
}
//default is 1 if not implemented

-(NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [self.tableDataSource count];
}



-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 50.0f;
}

-(CGFloat) tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{

    return 0;
}


-(UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
    
    
    UIView *headerView=[[UIView alloc] initWithFrame:CGRectMake(0,0,320, 40)];
    [headerView setBackgroundColor:[UIColor grayColor]];
    
    /*
    //UILabel *title=@"This is header of table";
    [title setBackgroundColor:[UIColor clearColor]];
    [title setTextColor:[UIColor redColor]];
    [title setFont:[UIFont fontWithName:@"Arial" size:12]];
    [headerView addSubview:title];
    */
    
    
    return nil;
}


-(NSArray *) sectionIndexTitlesForTableView:(UITableView *)tableView{
    
    NSArray *ar=@[@"title1",@"title2",@"title 3"];
    return ar;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{

    static NSString *cellIdentifier=@"cellIdentifier";
    UITableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if(cell==nil){
        cell=[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:cellIdentifier];
        
        UISwitch *switch1=[[UISwitch alloc] initWithFrame:CGRectMake(200, 20,40, 20)];
        [switch1 addTarget:self action:@selector(switchCalled:)forControlEvents:UIControlEventValueChanged];
        [cell addSubview:switch1];
    }
    
    cell.textLabel.text=[self.tableDataSource objectAtIndex:indexPath.row];
    cell.detailTextLabel.text=[NSString stringWithFormat:@"%d",indexPath.row];
    
    return cell;

}

@end
