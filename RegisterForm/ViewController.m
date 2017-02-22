//
//  ViewController.m
//  RegisterForm
//
//  Created by Bharat chowdary Kolla on 2/16/17.
//  Copyright © 2017 Bharat chowdary Kolla. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
-(IBAction)Register:(id)sender;

{

    NSString *strFirstName = FirstName.text;
    NSString *strLastName = LastName.text;
    NSString *strAddress = Address.text;
    NSString *strCity = City.text;
    NSString *strState = State.text;
    NSString *strCountry = Country.text;
    NSString *strZipCode = ZIPCode.text;
    NSString *strEmail = Email.text;
    NSString *strPassword = Password.text;
    NSString *strConfirmPassword = ConfirmPassword.text;
    NSString *strPhoneNumber = PhoneNumber.text;
    
    NSInteger lenthPhoneNumber = strPhoneNumber.length;
    

    if ([strFirstName isEqualToString:@""] && [strLastName isEqualToString:@""] && [strAddress isEqualToString:@""] && [strCity isEqualToString:@""] && [strState isEqualToString:@""] &&[strCountry isEqualToString:@""] && [strZipCode isEqualToString:@""] && [strEmail isEqualToString:@""] && [strPassword isEqualToString:@""] && [strPassword isEqualToString:@""] &&[strConfirmPassword isEqualToString:@""] && [strPhoneNumber isEqualToString:@""]) {
        
        [self AlertShow:@"All fields Required"];
        
    }
    else if ([strFirstName isEqualToString:@""]){
    
        [self AlertShow: @"Please Enter FirstName"];

    }
    else if ([strLastName isEqualToString:@""]){
        
        [self AlertShow: @"Please Enter LastName"];
    }
    else if ([strAddress isEqualToString:@""]){
        
        [self AlertShow: @"Please Enter Address"];
    }
    else if ([strCity isEqualToString:@""]){
        
        [self AlertShow: @"Please Enter City"];
    }
    else if ([strState isEqualToString:@""]){
        
        [self AlertShow: @"Please Enter State"];
    }
    else if ([strZipCode isEqualToString:@""])
    {
        
        [self AlertShow: @"Please Enter ZipCode"];
    }
    else if ([strEmail isEqualToString:@""]){
        
        [self AlertShow: @"Please Enter Email"];
    }
    else if ([strPassword isEqualToString:@""]){
        
        [self AlertShow: @"Please Enter Password"];
    }
    else if ([strConfirmPassword isEqualToString:@""]){
        
        [self AlertShow: @"Please Enter ConfirmPassword"];
    }
    else if ([strPhoneNumber isEqualToString:@""]){
        
        [self AlertShow: @"Please Enter PhoneNumber"];
    }
    else if (strPassword != strConfirmPassword) {
        
        [self AlertShow:@"Please Check the Password"];
        
        }
    else if (lenthPhoneNumber != 10)
    {
        [self AlertShow:@"Please Check the Phone Number"];

    }
    
    else {
        [self AlertShow:@"Success"];

    }
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void)AlertShow:(NSString *)strMessage
{
    UIAlertController *alertObj =[UIAlertController alertControllerWithTitle:@"Alert" message:strMessage preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction *okAction =[UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:nil];
    
    [alertObj addAction:okAction];
    
    [self  presentViewController:alertObj animated:YES completion:nil];
    
    
}

@end
