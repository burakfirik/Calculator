//
//  ViewController.h
//  Calculator
//
//  Created by burak firik on 10/25/13.
//  Copyright (c) 2013 Razeware LLC. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITextFieldDelegate, UIPickerViewDelegate, UIPickerViewDataSource>{

    IBOutlet UIToolbar *toolbar;
    IBOutlet UITextField *field1;
    IBOutlet UITextField *field2;

}

@property(strong, nonatomic)NSMutableArray *pickerDataSource ;

@property(nonatomic,strong) IBOutlet UILabel * result;

@property (nonatomic, strong) IBOutlet UIDatePicker *myDatePicker;

@property (strong, nonatomic)IBOutlet UIPickerView *myPicker;

-(IBAction)addButtonTouched:(UIButton *)sender;

-(IBAction)subButtonTouched:(UIButton *)sender;

-(IBAction)multButtonTouched:(UIButton *)sender;

-(IBAction)divButtonTouched:(UIButton *)sender;

-(IBAction)doneButtonTouched:(UIBarButtonItem *)sender;

@end
