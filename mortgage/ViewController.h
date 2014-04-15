//
//  ViewController.h
//  mortgage
//
//  Created by Daljeet Virdi on 4/10/14.
//  Copyright (c) 2014 Daljeet Virdi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITextFieldDelegate>
{
    float principle;
    int months;
    float tax;
    float interestRate;
    float mortgage;
    float j;

    
}

@property (weak, nonatomic) IBOutlet UILabel *sliderLabel;
@property (weak, nonatomic) IBOutlet UISlider *slider;

@property (weak, nonatomic) IBOutlet UITextField *principleTextField;
@property (weak, nonatomic) IBOutlet UILabel *Mortgage;


@property (weak, nonatomic) IBOutlet UISegmentedControl *loanTerm;
@property (weak, nonatomic) IBOutlet UISwitch *taxOn;
- (IBAction)calculateButtonPressed:(id)sender;

- (IBAction)principleEntered:(id)sender;


- (IBAction)sliderChanged:(id)sender;

- (IBAction)loanTermChanged:(id)sender;
- (IBAction)taxSwitched:(id)sender;


- (IBAction)dismissKeyboardBB:(id)sender;

@end
