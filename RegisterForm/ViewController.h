//
//  ViewController.h
//  RegisterForm
//
//  Created by Bharat chowdary Kolla on 2/16/17.
//  Copyright © 2017 Bharat chowdary Kolla. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

{
    IBOutlet UILabel *Registeration;
    IBOutlet UITextField *FirstName;
    IBOutlet UITextField *LastName;
    IBOutlet UITextField *Address;
    IBOutlet UITextField *City;
    IBOutlet UITextField *State;
    IBOutlet UITextField *Country;
    IBOutlet UITextField *ZIPCode;
    IBOutlet UITextField *Email;
    IBOutlet UITextField *Password;
    IBOutlet UITextField *ConfirmPassword;
    IBOutlet UITextField *PhoneNumber;
    IBOutlet UIButton *Register;
}
-(IBAction)Register:(id)sender;



@end

