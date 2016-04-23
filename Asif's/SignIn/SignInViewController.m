//
//  SignInViewController.m
//  Asif's
//
//  Created by UsFromMini on 4/12/16.
//  Copyright © 2016 Asif. All rights reserved.
//

#import "SignInViewController.h"

@interface SignInViewController ()

@end

@implementation SignInViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.title = @"ASIF's";
    
    [self.navigationController.navigationBar setTitleTextAttributes:
     @{NSForegroundColorAttributeName:UIColorFromRGB (0x8e2647), NSFontAttributeName : [UIFont fontWithName:@"HelveticaNeue-Bold" size:18]}
     ];
    
    [self makeUi];
    

}

-(void)makeUi{
    
    
    

    self.view.backgroundColor = UIColorFromRGB(0x37383d);
    
    UINavigationBar *navBar = self.navigationController.navigationBar;
    
    navBar.barTintColor = nil;
    navBar.translucent = YES;
    navBar.barStyle = UIBarStyleBlack;
    
  
    UIView* viewForAppBodyTextDisplay = [[UIView alloc]initWithFrame:CGRectMake(40* FactX, 120* FactY, Size.width-(80*FactX), Size.height/2)];
    viewForAppBodyTextDisplay.tag = 100;
    viewForAppBodyTextDisplay.backgroundColor = UIColorFromRGB(0xeeeeee);
    viewForAppBodyTextDisplay.layer.cornerRadius = 5;
    viewForAppBodyTextDisplay.clipsToBounds = YES;

    [self.view addSubview: viewForAppBodyTextDisplay];
    
   
    
    CGRect initialFrame = CGRectMake(10, 0, viewForAppBodyTextDisplay.frame.size.width-20, (viewForAppBodyTextDisplay.frame.size.height/3)-20);
    UIEdgeInsets contentInsets = UIEdgeInsetsMake(5, 0, 0, 0);
    CGRect paddedFrame = UIEdgeInsetsInsetRect(initialFrame, contentInsets);
    
    UILabel* lblFirstForAppBodyText = [[UILabel alloc] initWithFrame:paddedFrame];
    lblFirstForAppBodyText.backgroundColor = [UIColor clearColor];
    lblFirstForAppBodyText.text = @"\u0102"; //U+0102
    [lblFirstForAppBodyText setTextColor:UIColorFromRGB(0x65605c)];
    [lblFirstForAppBodyText setFont:[UIFont fontWithName:@"BradleyHandITCTT-Bold" size:60]];
    
    lblFirstForAppBodyText.textAlignment = NSTextAlignmentCenter;
    
    [viewForAppBodyTextDisplay addSubview: lblFirstForAppBodyText];
    
    UILabel* lblSecondForAppBodyText = [[UILabel alloc]initWithFrame:CGRectMake(10, lblFirstForAppBodyText.frame.origin.y + lblFirstForAppBodyText.frame.size.height + 10, viewForAppBodyTextDisplay.frame.size.width-20, (viewForAppBodyTextDisplay.frame.size.height/3)-20)];
    lblSecondForAppBodyText.backgroundColor = [UIColor whiteColor];
    lblSecondForAppBodyText.text = @"Passionate Software";
    [lblSecondForAppBodyText setTextColor:UIColorFromRGB(0x535353)];

    lblSecondForAppBodyText.numberOfLines = 1;
    [lblSecondForAppBodyText setFont:[UIFont fontWithName:@"BradleyHandITCTT-Bold" size:60]];
    lblSecondForAppBodyText.adjustsFontSizeToFitWidth = YES;
   

    lblSecondForAppBodyText.textAlignment = NSTextAlignmentCenter;
    
    [viewForAppBodyTextDisplay addSubview: lblSecondForAppBodyText];
    
    
    UILabel* lblThirdForAppBodyText = [[UILabel alloc]initWithFrame:CGRectMake(10, lblSecondForAppBodyText.frame.origin.y + lblSecondForAppBodyText.frame.size.height + 10, viewForAppBodyTextDisplay.frame.size.width-20, (viewForAppBodyTextDisplay.frame.size.height/3)-20)];
    lblThirdForAppBodyText.backgroundColor = [UIColor clearColor];
    lblThirdForAppBodyText.text = @"\u0108raftsman!";
    lblThirdForAppBodyText.adjustsFontSizeToFitWidth = YES;

    [lblThirdForAppBodyText setFont:[UIFont fontWithName:@"BradleyHandITCTT-Bold" size:60]];
    
    lblThirdForAppBodyText.textAlignment = NSTextAlignmentCenter;
    
    [viewForAppBodyTextDisplay addSubview: lblThirdForAppBodyText];

    
    UILabel* lblForDownWardArrow = [[UILabel alloc]initWithFrame:CGRectMake(viewForAppBodyTextDisplay.frame.size.width/2-50, lblThirdForAppBodyText.frame.origin.y + lblThirdForAppBodyText.frame.size.height+5, 100, 33)];
    lblForDownWardArrow.backgroundColor = [UIColor clearColor];
    lblForDownWardArrow.text = @"En\u2193ter";
    [lblForDownWardArrow setFont:[UIFont fontWithName:@"BradleyHandITCTT-Bold" size:25]];
    [lblForDownWardArrow setTextColor:UIColorFromRGB(0xc84845)];
    lblForDownWardArrow.textAlignment = NSTextAlignmentCenter;
    [viewForAppBodyTextDisplay addSubview: lblForDownWardArrow];
    
    UIButton* btnSignUp = [UIButton buttonWithType:UIButtonTypeCustom];
    btnSignUp.tag = 10;
    [btnSignUp addTarget:self
               action:@selector(signUpAction:)
     forControlEvents:UIControlEventTouchUpInside];
    [btnSignUp setTitle:@"Sign Up" forState:UIControlStateNormal];
    btnSignUp.titleLabel.font = [UIFont fontWithName:@"HelveticaNeue-Bold"  size:18];
    
    [btnSignUp setBackgroundColor:UIColorFromRGB(0xe15d50)];
    btnSignUp.frame = CGRectMake(10 * FactX, Size.height - (65 * FactY), Size.width/2 - (20* FactX), 40.0* FactY);
    btnSignUp.layer.cornerRadius = 10;
    btnSignUp.clipsToBounds = YES;

    [self.view addSubview:btnSignUp];
    
    UILabel* lblForBtnSeparator = [[UILabel alloc]initWithFrame:CGRectMake((Size.width/2 + (10 * FactX)) - 10* FactX - (2* FactX)/2 , Size.height - (65 * FactY), 2* FactX, 40.0* FactY)];
    lblForBtnSeparator.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:lblForBtnSeparator];
    
    UIButton* btnSignIn = [UIButton buttonWithType:UIButtonTypeCustom];
    btnSignIn.tag = 20;
    [btnSignIn addTarget:self
                  action:@selector(signInAction:)
        forControlEvents:UIControlEventTouchUpInside];
    [btnSignIn setTitle:@"Sign In" forState:UIControlStateNormal];
    btnSignIn.titleLabel.font = [UIFont fontWithName:@"HelveticaNeue-Bold"  size:18];

    [btnSignIn setBackgroundColor:UIColorFromRGB(0x9ca3ad)];
    btnSignIn.frame = CGRectMake(Size.width/2 + (10 * FactX), Size.height- (65 *FactY), Size.width/2 - (20*FactX), 40.0*FactY);
    btnSignIn.layer.cornerRadius = 10;
    btnSignIn.clipsToBounds = YES;
    
    [self.view addSubview:btnSignIn];
    

    UIView* viewInputInfo = [[UIView alloc]initWithFrame:CGRectMake(40 * FactX , -Size.height/2  , Size.width-(80 * FactX) , Size.height/2)];
    viewInputInfo.tag = 1000;
    viewInputInfo.backgroundColor = [UIColor clearColor];
    viewInputInfo.layer.cornerRadius = 5;
    viewInputInfo.clipsToBounds = YES;
    [self.view addSubview:viewInputInfo];
    
    UIButton* btnCloseSignUp = [[UIButton alloc]initWithFrame:CGRectMake( viewInputInfo.frame.size.width - 50 , 0, 40, 40)];
    btnCloseSignUp.hidden = YES;
    btnCloseSignUp.tag = 500;
    [btnCloseSignUp setTitle:@"\u274c" forState:UIControlStateNormal];
    btnCloseSignUp.titleLabel.textAlignment = NSTextAlignmentCenter;
    btnCloseSignUp.titleLabel.font = [UIFont fontWithName:@"Arial-BoldItalicMT" size:16];
    [btnCloseSignUp addTarget:self
                  action:@selector(closeAction:)
        forControlEvents:UIControlEventTouchUpInside];
    [btnCloseSignUp setTitleColor:UIColorFromRGB(0xbb0505) forState:UIControlStateNormal];
    [viewInputInfo addSubview:btnCloseSignUp];
    
    UIButton* btnCloseSignIn = [[UIButton alloc]initWithFrame:CGRectMake( viewInputInfo.frame.size.width - 50 , 45, 40, 40)];
    btnCloseSignIn.hidden = YES;
    btnCloseSignIn.tag = 501;

    [btnCloseSignIn setTitle:@"\u274c" forState:UIControlStateNormal];
    btnCloseSignIn.titleLabel.textAlignment = NSTextAlignmentCenter;
    btnCloseSignIn.titleLabel.font = [UIFont fontWithName:@"Arial-BoldItalicMT" size:16];
    [btnCloseSignIn addTarget:self
                 action:@selector(closeAction:)
       forControlEvents:UIControlEventTouchUpInside];
    [btnCloseSignIn setTitleColor:UIColorFromRGB(0xbb0505) forState:UIControlStateNormal];
    [viewInputInfo addSubview:btnCloseSignIn];
    
    UIView *paddingViewForName = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 5, 40)];
    
    
    UITextField* txtFieldName = [[UITextField alloc]initWithFrame:CGRectMake(20, 45, viewInputInfo.frame.size.width-40, 40)];
    txtFieldName.tag = 1 ;
    txtFieldName.backgroundColor = [UIColor whiteColor];
    txtFieldName.hidden = YES;
    txtFieldName.placeholder = @"Your Name";
    txtFieldName.leftView = paddingViewForName;
    txtFieldName.leftViewMode = UITextFieldViewModeAlways;

    [viewInputInfo addSubview:txtFieldName];
    
   
    UIBezierPath *maskPath = [UIBezierPath bezierPathWithRoundedRect:txtFieldName.bounds byRoundingCorners:( UIRectCornerTopLeft | UIRectCornerTopRight) cornerRadii:CGSizeMake(5.0, 5.0)];
    
    CAShapeLayer *maskLayer = [[CAShapeLayer alloc] init];
    maskLayer.frame = self.view.bounds;
    maskLayer.path  = maskPath.CGPath;
    
    txtFieldName.layer.mask = maskLayer;
    
    UIView *paddingViewForUserName = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 5, 40)];

    
    UITextField* txtFieldUserName = [[UITextField alloc]initWithFrame:CGRectMake(20, txtFieldName.frame.origin.y + txtFieldName.frame.size.height + 1 , viewInputInfo.frame.size.width-40, 40)];
    txtFieldUserName.backgroundColor = [UIColor whiteColor];
    txtFieldUserName.tag = 2;
    txtFieldUserName.delegate = self;
    txtFieldUserName.placeholder = @"User Name";
    txtFieldUserName.leftView = paddingViewForUserName;
    txtFieldUserName.leftViewMode = UITextFieldViewModeAlways;
    

    [viewInputInfo addSubview:txtFieldUserName];

    UIView *paddingViewForPassword = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 5, 40)];

    
    UITextField*  txtFieldPassword = [[UITextField alloc]initWithFrame:CGRectMake(20, txtFieldUserName.frame.origin.y + txtFieldUserName.frame.size.height + 1 , viewInputInfo.frame.size.width-40, 40)];
    txtFieldPassword.tag = 3;
    txtFieldPassword.backgroundColor = [UIColor whiteColor];
    txtFieldPassword.placeholder = @"Password";
    txtFieldPassword.leftView = paddingViewForPassword;
    txtFieldPassword.leftViewMode = UITextFieldViewModeAlways;
    

    [viewInputInfo addSubview:txtFieldPassword];

    maskPath = [UIBezierPath bezierPathWithRoundedRect:txtFieldPassword.bounds byRoundingCorners:( UIRectCornerBottomLeft | UIRectCornerBottomRight) cornerRadii:CGSizeMake(5.0, 5.0)];
    
    maskLayer = [[CAShapeLayer alloc] init];
    maskLayer.frame = self.view.bounds;
    maskLayer.path  = maskPath.CGPath;
    
    txtFieldPassword.layer.mask = maskLayer;
    

    
    UIButton* btnSubmit = [[UIButton alloc]initWithFrame:CGRectMake(20 , txtFieldPassword.frame.size.height + txtFieldPassword.frame.origin.y +20, viewInputInfo.frame.size.width-40, 40)];
    [btnSubmit setTitle:@"Submit" forState:UIControlStateNormal];
    btnSubmit.titleLabel.font = [UIFont fontWithName:@"HelveticaNeue-Bold"  size:18];

    [btnSubmit addTarget:self
                 action:@selector(submitAction:)
       forControlEvents:UIControlEventTouchUpInside];
    
    [btnSubmit setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    btnSubmit.backgroundColor = UIColorFromRGB(0x8e2647);
    //ff2851 //ff2851 //8e2647 //ff565d
    //btnSubmit.tag = 4;
    btnSubmit.layer.cornerRadius = 10;
    btnSubmit.clipsToBounds = YES;
    [viewInputInfo addSubview:btnSubmit];

    
}
-(void)signUpAction:(id)sender{
    
    isSignUpPressed = YES;
    
    UIView* viewForAppBodyTextDisplay = [self.view viewWithTag:100];
    [UIView animateWithDuration:0.5 delay:0.f options:UIViewAnimationOptionCurveEaseInOut animations:^{
        [viewForAppBodyTextDisplay setFrame:CGRectMake(-Size.width-(80*FactX),120* FactY, Size.width-(80*FactX), Size.height/2)];
        
    } completion:nil];
    
    UIButton* btnSignIn = (UIButton*)[self.view viewWithTag:20];
    btnSignIn.userInteractionEnabled = NO;
    
    UIView* viewInputInfo = [self.view viewWithTag:1000];
    
    UIButton*   btnCloseSignUp  = (UIButton*)[viewInputInfo viewWithTag:500];
    btnCloseSignUp.hidden = NO;
    
    UITextField* txtFieldName = (UITextField*)[viewInputInfo viewWithTag:1];
    [txtFieldName becomeFirstResponder];
    txtFieldName.hidden = NO;
    
     UITextField* txtFieldUserName = (UITextField*)[viewInputInfo viewWithTag:2];
    
    UIBezierPath *maskPath = [UIBezierPath bezierPathWithRoundedRect:txtFieldUserName.bounds byRoundingCorners:( UIRectCornerTopLeft | UIRectCornerTopRight) cornerRadii:CGSizeMake(0.0, 0.0)];
    
    CAShapeLayer *maskLayer = [[CAShapeLayer alloc] init];
    maskLayer.frame = self.view.bounds;
    maskLayer.path  = maskPath.CGPath;
    
    txtFieldUserName.layer.mask = maskLayer;

    
    [UIView animateWithDuration:0.5 delay:0.f options:UIViewAnimationOptionCurveEaseInOut animations:^{
        [viewInputInfo setFrame:CGRectMake(40* FactX, 120* FactY, Size.width-(80*FactX), Size.height/2 )];
        
        
        
    } completion:nil];
    
    

}

-(BOOL)authenticateCompleted{
    
    
    BOOL success = YES;
    
    DataClass* dataClass = [[DataClass alloc]init];
    
    UIView* viewInputInfo = [self.view viewWithTag:1000];

     UITextField* txtFieldName = (UITextField*)[viewInputInfo viewWithTag:1];
     UITextField* txtFieldUserName = (UITextField*)[viewInputInfo viewWithTag:2];
     UITextField* txtFieldPassword = (UITextField*)[viewInputInfo viewWithTag:3];


    if ([txtFieldName.text isEqualToString:@""] || [txtFieldUserName.text isEqualToString:@""] || [txtFieldPassword.text isEqualToString:@""]) {
        
               UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@""
                                                                                 message:@""
                                                                          preferredStyle:UIAlertControllerStyleAlert];
        
        NSMutableAttributedString *attributedWarn = [[NSMutableAttributedString alloc] initWithString:@"Warning!"];
        [attributedWarn addAttribute:NSForegroundColorAttributeName value:UIColorFromRGB(0xbb0505) range:NSMakeRange(0,8)];
        
        [alertController setValue:attributedWarn forKey:@"attributedTitle"];
        
        
        NSMutableAttributedString *attributedMsg = [[NSMutableAttributedString alloc] initWithString:@"Please fill all the field"];
        [attributedMsg addAttribute:NSForegroundColorAttributeName value:[UIColor blueColor] range:NSMakeRange(0,25)];
        
        [alertController setValue:attributedMsg forKey:@"attributedMessage"];
        
        alertController.view.tintColor = UIColorFromRGB(0x1573b9);

        UIAlertAction *actionOk = [UIAlertAction actionWithTitle:@"Ok"
                                                           style:UIAlertActionStyleDefault
                                                         handler:nil];
        [alertController addAction:actionOk];
        [self presentViewController:alertController animated:YES completion:nil];
        
        return  !(success);
        
    }
    
    if (![self isValidPassword]){
        
 
        UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@""
                                                                                 message:@""
                                                                          preferredStyle:UIAlertControllerStyleAlert];
        
        NSMutableAttributedString *attributedWarn = [[NSMutableAttributedString alloc] initWithString:@"Warning!"];
        [attributedWarn addAttribute:NSForegroundColorAttributeName value:UIColorFromRGB(0xbb0505) range:NSMakeRange(0,8)];
        
        [alertController setValue:attributedWarn forKey:@"attributedTitle"];
        
        
        NSMutableAttributedString *attributedMsg = [[NSMutableAttributedString alloc] initWithString:@"Password Length Need to be More Than 4 Characters"];
        [attributedMsg addAttribute:NSForegroundColorAttributeName value:[UIColor blueColor] range:NSMakeRange(0,49)];
        
        [alertController setValue:attributedMsg forKey:@"attributedMessage"];
        
        alertController.view.tintColor = UIColorFromRGB(0x1573b9);

        UIAlertAction *actionOk = [UIAlertAction actionWithTitle:@"Ok"
                                                           style:UIAlertActionStyleDefault
                                                         handler:nil];
        [alertController addAction:actionOk];
        [self presentViewController:alertController animated:YES completion:nil];
        
        return  !(success);
    }
    
    if([dataClass isUserAlreadyExist: txtFieldUserName.text]){
        
        UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@""
                                                                                 message:@""
                                                                          preferredStyle:UIAlertControllerStyleAlert];
        
        NSMutableAttributedString *attributedWarn = [[NSMutableAttributedString alloc] initWithString:@"Warning!"];
        [attributedWarn addAttribute:NSForegroundColorAttributeName value:UIColorFromRGB(0xbb0505) range:NSMakeRange(0,8)];
        
        [alertController setValue:attributedWarn forKey:@"attributedTitle"];
        
        
        NSMutableAttributedString *attributedMsg = [[NSMutableAttributedString alloc] initWithString:@"User Already Exists!"];
        [attributedMsg addAttribute:NSForegroundColorAttributeName value:[UIColor blueColor] range:NSMakeRange(0,20)];
        
        [alertController setValue:attributedMsg forKey:@"attributedMessage"];
        
        alertController.view.tintColor = UIColorFromRGB(0x1573b9);

        UIAlertAction *actionOk = [UIAlertAction actionWithTitle:@"Ok"
                                                           style:UIAlertActionStyleDefault
                                                         handler:nil];
        [alertController addAction:actionOk];
        [self presentViewController:alertController animated:YES completion:nil];
        
        return  !(success);
        
    }
    
    
        
    
    EUser * eUser = [[EUser alloc]init];
    
    eUser.Name = txtFieldName.text;
    eUser.UserName = txtFieldUserName.text;
    eUser.Password = txtFieldPassword.text;
        

    
    success= [dataClass insertUser: eUser];
    
    
    
    return success;
    
    
}

-(BOOL)isValidPassword{
    
    UIView* viewInputInfo = [self.view viewWithTag:1000];

    
    UITextField* txtFieldPassword = (UITextField*)[viewInputInfo viewWithTag:3];

    
    if(txtFieldPassword.text.length>=4 )
        return TRUE;
    
    return FALSE;
    
    
}


-(void)signInAction:(id)sender{
    
    UIView* viewForAppBodyTextDisplay = [self.view viewWithTag:100];
   
    [UIView animateWithDuration:0.5 delay:0.f options:UIViewAnimationOptionCurveEaseInOut animations:^{
        [viewForAppBodyTextDisplay setFrame:CGRectMake(-Size.width-(80*FactX),120* FactY, Size.width-(80*FactX), Size.height/2)];
        
    } completion:nil];
    
    UIButton* btnSignUp = (UIButton*)[self.view viewWithTag:10];
    btnSignUp.userInteractionEnabled = NO;
    
    isSignUpPressed = NO;
    
    UIView* viewInputInfo = [self.view viewWithTag:1000];
    
    UIButton* btnSignInClose = (UIButton*) [viewInputInfo viewWithTag:501];
    btnSignInClose.hidden = NO;
    
    
    UITextField* txtFieldUserName = (UITextField*)[viewInputInfo viewWithTag:2];
    
    
      UIBezierPath *maskPath = [UIBezierPath bezierPathWithRoundedRect:txtFieldUserName.bounds byRoundingCorners:( UIRectCornerTopLeft | UIRectCornerTopRight) cornerRadii:CGSizeMake(5.0, 5.0)];
    
    CAShapeLayer *maskLayer = [[CAShapeLayer alloc] init];
    maskLayer.frame = self.view.bounds;
    maskLayer.path  = maskPath.CGPath;
    
    txtFieldUserName.layer.mask = maskLayer;

    
    [UIView animateWithDuration:0.5 delay:0.f options:UIViewAnimationOptionCurveEaseInOut animations:^{
        [viewInputInfo setFrame:CGRectMake(40* FactX, 120* FactY, Size.width-(80*FactX), Size.height/2)];
        
        
    } completion:nil];
}

-(void)closeAction:(id)sender{
    
    UIButton* btn = (UIButton*)sender;
    btn.hidden = YES;
    
    UIView* viewInputInfo = [self.view viewWithTag:1000];
    
    UITextField* txtFieldName = (UITextField*)[viewInputInfo viewWithTag:1];
    UITextField* txtFieldUserName = (UITextField*)[viewInputInfo viewWithTag:2];
    UITextField* txtFieldPassword = (UITextField*)[viewInputInfo viewWithTag:3];
    
    
    txtFieldName.text = @"";
    txtFieldUserName.text = @"";
    txtFieldPassword.text = @"";

    
    
    txtFieldName.hidden = YES;
    
    [UIView animateWithDuration:0.5 delay:0.f options:UIViewAnimationOptionCurveEaseInOut animations:^{
        [viewInputInfo setFrame:CGRectMake(40, -Size.height/2, Size.width-80, Size.height/2)];
        
    } completion:nil];
    
   
    
    UIButton* btnSignUp = (UIButton*)[self.view viewWithTag:10];
    btnSignUp.userInteractionEnabled = YES;

    UIButton* btnSignIn = (UIButton*)[self.view viewWithTag:20];
    btnSignIn.userInteractionEnabled = YES;

    UIView* viewForAppBodyTextDisplay = [self.view viewWithTag:100];
    
    [UIView animateWithDuration:0.5 delay:0.f options:UIViewAnimationOptionCurveEaseInOut animations:^{
        [viewForAppBodyTextDisplay setFrame:CGRectMake(40* FactX, 120* FactY, Size.width-(80*FactX), Size.height/2)];
        
    } completion:nil];
}

-(void)submitAction:(id)sender{
    
    UIView* viewInputInfo = [self.view viewWithTag:1000];

    UITextField* txtFieldName = (UITextField*)[viewInputInfo viewWithTag:1];
    UITextField* txtFieldUserName = (UITextField*)[viewInputInfo viewWithTag:2];
    UITextField* txtFieldPassword = (UITextField*)[viewInputInfo viewWithTag:3];
    
//    UIButton* btnSignUpClose = (UIButton*)[viewInputInfo viewWithTag:500];
//    btnSignUpClose.hidden = YES;
//    
//    UIButton* btnSignInClose = (UIButton*)[viewInputInfo viewWithTag:501];
//    btnSignInClose.hidden = YES;
//
    
    if(isSignUpPressed){
        
        NSLog(@"Sign Up Pressed");

    
        BOOL success = YES;
    
        success =   [self authenticateCompleted];
    
        
        [txtFieldPassword resignFirstResponder];
    
        if(success){
            
            UIButton* btnSignUpClose = (UIButton*)[viewInputInfo viewWithTag:500];
            btnSignUpClose.hidden = YES;

            NSLog(@"Signed Up");
            
            
            
            UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@""
                                                                                     message:@""
                                                                              preferredStyle:UIAlertControllerStyleAlert];
            
            NSMutableAttributedString *attributedWarn = [[NSMutableAttributedString alloc] initWithString:@"Congrats!"];
            [attributedWarn addAttribute:NSForegroundColorAttributeName value:UIColorFromRGB(0x1573b9) range:NSMakeRange(0,8)];
            
            [alertController setValue:attributedWarn forKey:@"attributedTitle"];
            
            
            NSMutableAttributedString *attributedMsg = [[NSMutableAttributedString alloc] initWithString:@"Signed Up Successfully!"];
            [attributedMsg addAttribute:NSForegroundColorAttributeName value:[UIColor  blueColor] range:NSMakeRange(0,23)];
            
            [alertController setValue:attributedMsg forKey:@"attributedMessage"];
            
            alertController.view.tintColor = UIColorFromRGB(0x1573b9);
 
            
            //We add buttons to the alert controller by creating UIAlertActions:
            UIAlertAction *actionOk = [UIAlertAction actionWithTitle:@"Ok"
                                                               style:UIAlertActionStyleDefault
                                                             handler:nil]; //You can use a block here to handle a press on this button
            [alertController addAction:actionOk];
            [self presentViewController:alertController animated:YES completion:nil];
            
            [self closeAction:nil];
        }

    //[self closeAction:sender];
        
        
    }
    
    else{
        NSLog(@"Sign In Pressed");
        
        
        
        DataClass* dataClass   = [[DataClass alloc]init];
       NSArray* fetchData = [dataClass authenticateUserByUserName: txtFieldUserName.text andPassword:txtFieldPassword.text ManageObj:NO];
        
        if(fetchData.count>0){
            
            UIButton* btnSignInClose = (UIButton*)[viewInputInfo viewWithTag:501];
            btnSignInClose.hidden = YES;
            

            
            [txtFieldUserName becomeFirstResponder];
            [self closeAction:nil];
            

            StoryTellerViewController* svc = [[StoryTellerViewController alloc]init];
            [self.navigationController pushViewController:svc animated:NO];

            
        }
        else{
            
            [txtFieldUserName becomeFirstResponder];
            
            UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@""
                                                                                     message:@""
                                                                              preferredStyle:UIAlertControllerStyleAlert];
            
            NSMutableAttributedString *attributedWarn = [[NSMutableAttributedString alloc] initWithString:@"Warning!"];
            [attributedWarn addAttribute:NSForegroundColorAttributeName value:UIColorFromRGB(0xbb0505) range:NSMakeRange(0,8)];
            
            [alertController setValue:attributedWarn forKey:@"attributedTitle"];
            
            
            NSMutableAttributedString *attributedMsg = [[NSMutableAttributedString alloc] initWithString:@"Invalid Username or Password!"];
            [attributedMsg addAttribute:NSForegroundColorAttributeName value:[UIColor blueColor] range:NSMakeRange(0,29)];
            
            [alertController setValue:attributedMsg forKey:@"attributedMessage"];
            
            alertController.view.tintColor = UIColorFromRGB( 0x1573b9);
            
            UIAlertAction *actionOk = [UIAlertAction actionWithTitle:@"Ok"
                                                               style:UIAlertActionStyleDefault
                                                             handler:nil];
            [alertController addAction:actionOk];
            [self presentViewController:alertController animated:YES completion:nil];
            
            
        }

    }
    
    txtFieldUserName.text = @"";
    txtFieldPassword.text = @"";
    txtFieldName.text = @"";

}
- (void) touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    [[self view] endEditing:YES];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
