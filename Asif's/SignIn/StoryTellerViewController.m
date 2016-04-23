//
//  StoryTellerViewController.m
//  Asif's
//
//  Created by UsFromMini on 4/18/16.
//  Copyright © 2016 Asif. All rights reserved.
//

#import "StoryTellerViewController.h"

@interface StoryTellerViewController ()

@end

@implementation StoryTellerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"StoryTeller";
    
    [self.navigationController.navigationBar setTitleTextAttributes:
     @{NSForegroundColorAttributeName:UIColorFromRGB (0x8e2647), NSFontAttributeName : [UIFont fontWithName:@"HelveticaNeue-Bold" size:18]}];

    [self makeUI];
}

-(void)makeUI{
    
    //NSLog(@"Size: %f",Size.height);
    //NSLog(@"width %f",Size.width);

    self.view.backgroundColor = UIColorFromRGB(0x37383d);
    
    self.navigationController.navigationBar.tintColor = [UIColor whiteColor];
    
   
   UIScrollView* scrollView = [[UIScrollView alloc]initWithFrame:CGRectMake(0, 0, Size.width, Size.height)];
    scrollView.tag = 100;
    scrollView.delegate = self;
    scrollView.showsVerticalScrollIndicator = NO;
    
    [self.view addSubview:scrollView];
    
    
    
    NSDictionary* dicData = @{
                               @"2016": @[ @[@"\"KubePOS\"",@"Point of Sale Solution for Resturants. The Resturant Management System That is an Integral Part of This Solution Allows The Resturant Owner to manage Inventory, Employees,Sales,Marketing,Promotions and Many Other Aspects of the Bussiness"],
                                           
                                        ],
                               
                               @"2015": @[ @[@"Intern",@"nOFAC- I Worked On \"Know Your Customer Model\""],
                                           
                                           @[@"iOS Developer",@" I Always Had a Fascination for Working in Small Devices Like Phone, Tab. So When The Opportunity Came I Grab That. Though I was the Only Employee There But I Passed Exciting Time with EveryThing From Syntax to quirks of Xcode."],
                                           
                                           @[@"First Love",@"My First App is \"Collage Maker-Wallpaer App\"-My First Love. User Can download,Share or Customize Wallpaper. He Can also Make Photo Collage Choosing Collage View from 50 of Frames"],
                                           
                                           @[@"Share Terrace",@"A Japanese App. User can search for fellows using categories (such as: hobbies,photos etc.), they can chat using the chat box,share pictures and videos. A tracking system is also provided by which user can see who visits his profile. Auto suggestions for fellows are provided to user like Facebook. User can tweet his/her status too and share it with other users using this app."
 
                                               ]
                                        ],
                               
                               @"2014": @[ @[@"Graduated",@"Our Batch Graduated 5 Years After We Set Foot At University! Whatever it is Dreams Finally Came True"]
                                          ],
                               @"2013": @[ @[@"Awarded",@"This Time Excellent Performance Award @RUET"],
                                           @[@"ACM ICPC",@"We Participated in ACM Held at NSU"]
                                           ],

                               @"2012": @[
                                            @[@"AI",@"This Year We Wanted to Make Stock Master More Personalized. We Started Digging Data Mining. Intregated AI with S.M. Our Teachers inspired and Helped a lot in this regard"],
                                       
                                            @[@"CFICC",@"Our Team Awarded Best Innovative Idea"],
                                           @[@"ACM ICPC",@"First Time Took Part in ACM ICPC"]
                                           ],

                               @"2011": @[ @[@"Runners Up",@"Our Team Became Runners Up at 1st National Collegiate Software Competition held in SUST. \"Pipilika\" The First Ever Bangla Search Became Champion. Our Product was \"Stock Master\""],
                                           
                                           @[@"SM",@"\"Stock Master\", Our First Product. Initially It was a Personalized Share Market Management Software"
                                               ],
                                           
                                           @[@"Champion",@"This Time We Became Champion at NSU"]
                                           ],

                               @"2010": @[ @[@"RUET",@"I Always had a Dream of Becoming a Cricket Player who has a Major in CSE. I Couldn't Play at National Team but My Dream of Becoming a CSE Graduate Started This Year"],
                                           
                                           @[@"Hello World!",@"I Wrote My First Program in C Language,Pressed Ctrl+s then F9 and Enjoyed the Magic!!!" ],
                                             
                                             @[@"Journey...",@"Journey Continued with OOP, Data Structure, Algorithm,Discrete Mathematics."],
                                           
                                            @[@"CM",@"That Year I along with My Friend Tarek formed a team Named \"Creative Minds\". He was a Pro Programmer. So My Learning Curve was Exponential. Till Today He is My Teacher as Well as a Very Good Friend"
                                            ]
            
                                           
                                           ],
                               @"2009": @[ @[@"Notre Dame",@"The Memorable Journey I Started on 22th July in 2007 at   8 a.m. Came to an End in 2009."],
                                           @[@"Notre Dame",@"The Memory I Collected from Those 2 Years are Still alive in My Memory. Saying \"Good Bye\" to NDC was the Toughest Task."]
                               
                                           ],
                        
                               

                               
                            };
    
    NSArray* arraySortedDicKeys =[ [NSArray alloc]initWithArray:dicData.allKeys];
    NSSortDescriptor *sortOrder = [NSSortDescriptor sortDescriptorWithKey:@"self" ascending:YES];
    
   
    arraySortedDicKeys=[arraySortedDicKeys sortedArrayUsingDescriptors:@[ sortOrder ]];
    
    
    CGFloat heightMainLoadingIndicator ;//= (Size.height*arraySortedDicKeys.count)>5450? 5450: (Size.height*arraySortedDicKeys.count);
    
    
    if ((Size.height*arraySortedDicKeys.count)>3000) {
        heightMainLoadingIndicator = 3000;
        
        UIView* viewAdded = [[UIView alloc]initWithFrame:CGRectMake(self.view.frame.size.width / 2 - ((FactX*8)/2), 3000, FactX* 8,  5000)];
        viewAdded.backgroundColor =  UIColorFromRGB(0x7e7c7d);
        
        [scrollView addSubview:viewAdded];
        

        
    }
    
    else{
        heightMainLoadingIndicator = Size.height*arraySortedDicKeys.count;
    }
    
    UIView* viewMainLoadingIndicator = [[UILabel alloc]initWithFrame:CGRectMake(self.view.frame.size.width / 2 - ((FactX*8)/2), FactY* 110, FactX* 8,  heightMainLoadingIndicator )];
    viewMainLoadingIndicator.backgroundColor = UIColorFromRGB(0x7e7c7d);
    viewMainLoadingIndicator.tag = 250;
    
    [scrollView addSubview:viewMainLoadingIndicator];
    
    
  UIView* viewSubLoadingIndicator = [[UILabel alloc]initWithFrame:CGRectMake(self.view.frame.size.width / 2 - ((FactX*8)/2), FactY* 30, FactX* 8, FactY * Size.height*3 - 20)];
    viewSubLoadingIndicator.backgroundColor = UIColorFromRGB(0x8e2647);
    viewSubLoadingIndicator.tag = 200;
    [scrollView addSubview: viewSubLoadingIndicator];
    
    
    UIView* viewBriefDescription = [[UIView alloc]initWithFrame:CGRectMake( 0 , FactY * 1, Size.width  , 135* FactY)];
    viewBriefDescription.backgroundColor = UIColorFromRGB(0xefefef);
    [scrollView addSubview: viewBriefDescription];
    
    UILabel* lblBriefDiscussion = [[UILabel alloc]initWithFrame:CGRectMake( 12*FactX , FactY * 2, Size.width - (12*FactX*2) , 135* FactY)];
    lblBriefDiscussion.numberOfLines = 0;
    lblBriefDiscussion.backgroundColor = [UIColor clearColor];
    [lblBriefDiscussion setTextColor:[UIColor blackColor]];
    [viewBriefDescription addSubview:lblBriefDiscussion];
    

    NSMutableParagraphStyle *paragraphStyle = [[NSMutableParagraphStyle alloc]init];
    paragraphStyle.lineBreakMode = NSLineBreakByWordWrapping; //set the line break mode
    paragraphStyle.alignment                = NSTextAlignmentJustified;
    paragraphStyle.firstLineHeadIndent      = 0.001f;
    NSDictionary *attributes = @{NSFontAttributeName: [UIFont systemFontOfSize:15.f],
                                 NSBaselineOffsetAttributeName: @0,
                                 
                                 NSParagraphStyleAttributeName: paragraphStyle};
    
    NSString* text = @"I thought it would be exciting really exciting to look back on the last decade(almost!) of my life and pick out some events that were important for taking me where I am today.";
    
    NSMutableAttributedString *attributedText = [[NSMutableAttributedString alloc] initWithString:text
                                                                                       attributes:attributes];
    
    [attributedText addAttribute:NSForegroundColorAttributeName value:UIColorFromRGB(0x8e2647) range:NSMakeRange(22,8)];//loc,length
    [attributedText addAttribute:NSForegroundColorAttributeName value:UIColorFromRGB(0x8e2647) range:NSMakeRange(78,1)];
    [attributedText addAttribute:NSForegroundColorAttributeName value:UIColorFromRGB(0x8e2647) range:NSMakeRange(86,1)];
    [attributedText addAttribute:NSStrikethroughStyleAttributeName
                           value:@(NSUnderlineStyleSingle)
                           range:NSMakeRange(22,8)];//strike through
    

    
    
    lblBriefDiscussion.attributedText = attributedText;
    lblBriefDiscussion.textAlignment = NSTextAlignmentCenter;
    [lblBriefDiscussion setFont:[UIFont fontWithName:@"Helvetica" size:19 ]];
    


    UIView* mainViewDescription;

    for (NSString* key in arraySortedDicKeys) {
        
        
        UILabel* lblRoundedForYear = [[UILabel alloc]initWithFrame:CGRectMake(Size.width /2-((50*FactX)/2),(mainViewDescription.frame.size.height + mainViewDescription.frame.origin.y + FactY * 150), 50*FactX, 50*FactX)];
        lblRoundedForYear.backgroundColor  =[UIColor whiteColor];;
        lblRoundedForYear.text =  key ;
        [lblRoundedForYear setFont:[UIFont fontWithName:@"AmericanTypewriter-Bold" size:18]];
        
        lblRoundedForYear.textColor = UIColorFromRGB(0x37383d);;
        lblRoundedForYear.textAlignment = NSTextAlignmentCenter;
        lblRoundedForYear.layer.cornerRadius = lblRoundedForYear.frame.size.width/2;
        lblRoundedForYear.layer.masksToBounds = YES;
        [scrollView addSubview:lblRoundedForYear];
        
        
        
        CGFloat lblOriginY = lblRoundedForYear.frame.origin.y;
        CGFloat lblHeight  = lblRoundedForYear.frame.size.height;
        
        CGFloat mainViewDescriptionOriginY = 0;
        CGFloat mainViewDescriptionHeight  = 0;
        
        NSArray* arrayYearDetailInDic= [dicData objectForKey: key];
        
        for (int i = 0; i < arrayYearDetailInDic.count; i++) {
            
            NSArray* arrayPerLabel = [arrayYearDetailInDic objectAtIndex:i];
            
            
            if( i%2 == 0 ){
                
                mainViewDescription = [[UIView alloc]initWithFrame:CGRectMake(-FactX*130,(lblOriginY + lblHeight + 20 + mainViewDescriptionOriginY + mainViewDescriptionHeight) , FactX*130, FactY* 150)];
                mainViewDescription.tag = 500;
            }
            
            else{
                
                mainViewDescription = [[UIView alloc]initWithFrame:CGRectMake(Size.width + 5 ,(lblOriginY + lblHeight + 20 + mainViewDescriptionOriginY + mainViewDescriptionHeight) , FactX*130, FactY* 150)];
                mainViewDescription.tag = 501;
                
            }

            mainViewDescription.backgroundColor = UIColorFromRGB(0x8e2647);//[UIColor lightGrayColor];
            [scrollView addSubview:mainViewDescription];
            
            lblOriginY = 0;
            lblHeight  = 0;
            
            mainViewDescriptionOriginY = mainViewDescription.frame.origin.y;
            mainViewDescriptionHeight  = mainViewDescription.frame.size.height;
            
            
            UILabel* lblDescriptionTitle = [[UILabel alloc]initWithFrame:CGRectMake(0,0, mainViewDescription.frame.size.width, 30)];
            lblDescriptionTitle.backgroundColor = [UIColor clearColor];
            lblDescriptionTitle.text = [arrayPerLabel objectAtIndex:0];
            [lblDescriptionTitle setTextColor:[UIColor whiteColor]];
            [lblDescriptionTitle setFont:[UIFont fontWithName:@"AmericanTypewriter-Bold" size:18]];
            lblDescriptionTitle.textAlignment = NSTextAlignmentCenter;
            [mainViewDescription addSubview: lblDescriptionTitle];
            
            
            UILabel* lblDescription = [[UILabel alloc]initWithFrame:CGRectMake(0,30, mainViewDescription.frame.size.width, mainViewDescription.frame.size.height-40)];
            lblDescription.backgroundColor =  UIColorFromRGB(0xefefef);
            lblDescription.numberOfLines = 0;
            [lblDescription setFont:[UIFont fontWithName:@"HelveticaNeue" size:17 ]];
            lblDescription.text = [arrayPerLabel objectAtIndex:1];
            lblDescription.textAlignment = NSTextAlignmentCenter;

            [lblDescription sizeToFit];
            [mainViewDescription addSubview:lblDescription];
            
            [mainViewDescription setFrame:CGRectMake(mainViewDescription.frame.origin.x, mainViewDescription.frame.origin.y, lblDescription.frame.size.width, mainViewDescription.frame.size.height)];
            [lblDescriptionTitle setFrame:CGRectMake(lblDescriptionTitle.frame.origin.x, lblDescriptionTitle.frame.origin.y, lblDescription.frame.size.width, lblDescriptionTitle.frame.size.height)];
            
            CGRect newFrameForView = mainViewDescription.frame;
            newFrameForView.size.height = lblDescription.frame.size.height + 10 + 30;
            mainViewDescription.frame = newFrameForView;
            
            mainViewDescriptionOriginY = mainViewDescription.frame.origin.y;
            mainViewDescriptionHeight  = mainViewDescription.frame.size.height;

            

        }
        
       
        scrollView.contentSize = CGSizeMake(Size.width, mainViewDescriptionOriginY +  mainViewDescriptionHeight + Size.height);

    }
    
    
   
    
   
}

-(void)viewDidAppear:(BOOL)animated{
    
  }

#pragma  mark scrollview delegate

- (void)scrollViewDidScroll:(UIScrollView *)mainScrollView {
   
    UIView* viewSubLoadingIndicator  = (UIView*) [mainScrollView viewWithTag:200];
    
    
    [viewSubLoadingIndicator setFrame:CGRectMake(Size.width / 2 - ((FactX*8)/2), mainScrollView.contentOffset.y, FactX* 8, Size.height/2 - 20)];
    
    
    
  
    
    
    for(UIView* subView in mainScrollView.subviews )
    {
        //  Get all subViews of ScrollView.
        
        if([subView isKindOfClass:[UIView class]]) // Check is SubView Class Is UIView class?
        {
            
            UIView* view = (UIView*)subView;
            
            
            if (    (view.tag == 500 || view.tag == 501)    &&  (view.frame.origin.y > mainScrollView.contentOffset.y) &&  (view.frame.origin.y< mainScrollView.contentOffset.y + mainScrollView.frame.size.height)) {
                
                
                if(view.tag==500){
                    
                    [UIView animateWithDuration:0.5 delay:0.f options:UIViewAnimationOptionCurveEaseInOut animations:^{
                        [view setFrame:CGRectMake(12*FactX, view.frame.origin.y ,view.frame.size.width, view.frame.size.height)];
                        
                    } completion:nil];
                }
                else if (view.tag==501){
                    [UIView animateWithDuration:0.5 delay:0.f options:UIViewAnimationOptionCurveEaseInOut animations:^{
                        [view setFrame:CGRectMake( Size.width/2 + 17*FactX, view.frame.origin.y ,view.frame.size.width, view.frame.size.height)];
                        
                    } completion:nil];
                }
                
                
            }
            
        }
    }

    
    
    
}

- (void)scrollViewDidEndDecelerating:(UIScrollView *)mainScrollView
{
    
    UIView* viewSubLoadingIndicator = (UIView*) [mainScrollView viewWithTag:200];
    
    [viewSubLoadingIndicator setFrame:CGRectMake(self.view.frame.size.width / 2 - ((FactX*8)/2), mainScrollView.contentOffset.y, FactX* 8, Size.height)];
    
    
    
    
    
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
