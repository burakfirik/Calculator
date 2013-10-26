//
//  ViewController.m
//  Calculator
//
//  Created by burak firik on 10/25/13.
//  Copyright (c) 2013 Razeware LLC. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(BOOL)textFieldShouldBeginEditing:(UITextField *)textField{
    [toolbar setHidden:NO];
    return YES;
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField{
    [textField resignFirstResponder];
    return YES;

}


-(IBAction)addButtonTouched:(UIButton *)sender{
    
    int output=[field1.text intValue]+[field2.text intValue];
    self.result.text=[NSString stringWithFormat:@"%d", output];
    //[toolbar setHidden:YES];
    [field1 resignFirstResponder];
    [field2 resignFirstResponder];
    //self.result.text=@"Selam dostum";

}

-(IBAction)multButtonTouched:(UIButton *)sender{
    int output=[field1.text intValue]*[field2.text intValue];
    self.result.text=[NSString stringWithFormat:@"%d", output];
    [field1 resignFirstResponder];
    [field2 resignFirstResponder];
    
    
}

-(IBAction)subButtonTouched:(UIButton *)sender{
    int output=[field1.text intValue]-[field2.text intValue];
    self.result.text=[NSString stringWithFormat:@"%d", output];
    
    [field1 resignFirstResponder];
    [field2 resignFirstResponder];
}


-(IBAction)doneButtonTouched:(UIBarButtonItem *)sender{
    [field1 resignFirstResponder];
    [field2 resignFirstResponder];
    [toolbar setHidden:YES];

}

-(IBAction)DivButtonTouched:(UIButton *)sender{
    int output=[field1.text intValue]+[field2.text intValue];
    self.result.text=[NSString stringWithFormat:@"%d", output];
    [field1 resignFirstResponder];
    [field2 resignFirstResponder];
    
}

@end
