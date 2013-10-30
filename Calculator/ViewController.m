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
    NSArray *array=[[NSArray alloc] initWithObjects:@"1",@"2",@"3",@"4",@"5" ,nil];
    self.pickerDataSource=array;

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

-(IBAction)divButtonTouched:(UIButton *)sender{
    int output=[field1.text intValue]/[field2.text intValue];
    self.result.text=[NSString stringWithFormat:@"%d",output];
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

#pragma mark -
#pragma mark UIPickerViewDelegate + DataSources
-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    return 1;
}

-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{

    return [self.pickerDataSource count];
}
-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    if(component==0){
        return [self.pickerDataSource objectAtIndex:row];
    }else if(component==1){
        return [self.pickerDataSource objectAtIndex:row];
    }
    
    return nil;
}

-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component{
    
    NSLog(@"row selected us :@", [self.pickerDataSource objectAtIndex:row]);
}


@end
