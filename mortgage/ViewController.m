//
//  ViewController.m
//  mortgage
//
//  Created by Daljeet Virdi on 4/10/14.
//  Copyright (c) 2014 Daljeet Virdi. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize slider, sliderLabel, principleTextField, loanTerm,  taxOn, Mortgage, interestRateText;

UILabel *label;


- (void)viewDidLoad
{
    tax = 0.1;
    [super viewDidLoad];
    principleTextField.keyboardType = UIKeyboardTypeNumberPad;
    
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    NSLog(@"You entered %@",self.principleTextField.text);
    return YES;
}

- (void) viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (IBAction)dismissKeyboardBB:(id)sender
{
    [self.view endEditing:YES];
    [principleTextField resignFirstResponder];
}




- (IBAction)calculateButtonPressed:(id)sender {
    j = interestRate/12;
    if(interestRate != 0){
        mortgage = (principle *((j)/(1-powf((1+j),-months)))) + tax;
    }
    else{
        mortgage = (principle/months) + tax;
    }
    NSLog(@"CALCULATE %f", mortgage);
    self.Mortgage.text = [NSString stringWithFormat:@"$ %.2f", mortgage];
}

- (IBAction)principleEntered:(id)sender {
    principle = [principleTextField.text floatValue];
    
}


- (IBAction)sliderChanged:(id)sender {
    
    interestRate = ([slider value]);
    NSLog(@"%f", interestRate);
    self.sliderLabel.text = [NSString stringWithFormat:@"%.2f %%", (self.slider.value*10)];
    
}

- (IBAction)loanTermChanged:(id)sender {
    if([loanTerm selectedSegmentIndex] == 0){
        months = 10*12;
    }
    if([loanTerm selectedSegmentIndex] == 1){
        months = 15*12;
    }
    if([loanTerm selectedSegmentIndex] == 2){
        months = 30*12;
    }
    NSLog(@"%d", months);
}

- (IBAction)taxSwitched:(id)sender {
    if([taxOn isOn]){
        tax = 0.1;
    }
    else{
        tax = 0;
    }
    NSLog(@"%f", tax);
    
}
@end
