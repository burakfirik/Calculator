//
//  MyTableVC.h
//  Calculator
//
//  Created by burak firik on 10/30/13.
//  Copyright (c) 2013 Razeware LLC. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MyTableVC : UIViewController<UITableViewDataSource, UITableViewDataSource, UISearchBarDelegate>{

}


@property(nonatomic, strong) NSArray *tableDataSource;
@property(nonatomic, strong) IBOutlet UISearchBar *search;
@property(nonatomic, strong) IBOutlet UITableView *myTable;

-(IBAction) backC:(UIButton *)sender;

@end
