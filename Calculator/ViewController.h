//
//  ViewController.h
//  Calculator
//
//  Created by burak firik on 10/25/13.
//  Copyright (c) 2013 Razeware LLC. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITextFieldDelegate>{

    IBOutlet UIToolbar *toolbar;
    IBOutlet UITextField *field1;
    IBOutlet UITextField *field2;

}

@property(nonatomic,strong) IBOutlet UILabel * result;

-(IBAction)addButtonTouched:(UIButton *)sender;

-(IBAction)subButtonTouched:(UIButton *)sender;

-(IBAction)multButtonTouched:(UIButton *)sender;

-(IBAction)DivButtonTouched:(UIButton *)sender;

-(IBAction)doneButtonTouched:(UIBarButtonItem *)sender;

@end
