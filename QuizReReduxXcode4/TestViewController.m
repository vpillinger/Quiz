//
//  TestViewController.m
//  QuizReReduxXcode4
//
//  Created by Vincent Pillinger on 1/17/14.
//  Copyright (c) 2014 Vincent Pillinger. All rights reserved.
//

#import "TestViewController.h"

@interface TestViewController ()

@end

@implementation TestViewController
@synthesize answerLabel;
@synthesize questionLabel;

- (void)viewDidLoad
{
    [super viewDidLoad];
    //there was a comment here I deleted by accident
    [self initWithNibName:@"MyApp" bundle:nil];
}

- (void)viewDidUnload
{
    [self setQuestionLabel:nil];
    [self setAnswerLabel:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return YES;
    }
}


-(id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self =[super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    //if not null
    if(self){
        curQuestionIndex = 0;
        // Do any additional setup after loading the view, typically from a nib.
        questions = [[NSMutableArray alloc] init];
        answers = [[NSMutableArray alloc] init];
        //add questions and answers
        [questions addObject:@"What is 7+7?"];
        [questions addObject:@"What is the capital of Vermont"];
        [questions addObject:@"From what is cognac made?"];
        [answers addObject:@"14"];
        [answers addObject:@"Montpelier"];
        [answers addObject:@"Grapes"];
    }
    //return address of object
    return self;
}

-(IBAction)showQuestion:(id)sender {
    //progress question
    curQuestionIndex++;
    if(curQuestionIndex == [questions count]){
        curQuestionIndex = 0;
    }
    //get Question and display
    NSString *curQuestion = [questions objectAtIndex:curQuestionIndex];
    NSLog(@"Displaying Question: %@" , curQuestion);
    [questionLabel setText:curQuestion];
    //clear answer field
    [answerLabel setText:@"???"];
}
- (IBAction)showAnswer:(id)sender {
    NSString  *curAnswer = [answers objectAtIndex:curQuestionIndex];
    [answerLabel setText:curAnswer];
}
@end
