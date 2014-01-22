//
//  TestViewController.h
//  QuizReReduxXcode4
//
//  Created by Vincent Pillinger on 1/17/14.
//  Copyright (c) 2014 Vincent Pillinger. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TestViewController : UIViewController
{
    //private instance
    int curQuestionIndex;
    NSMutableArray *questions;
    NSMutableArray *answers;
}
- (IBAction)showQuestion:(id)sender;
@property (weak, nonatomic) IBOutlet UILabel *questionLabel;//public
- (IBAction)showAnswer:(id)sender;
@property (weak, nonatomic) IBOutlet UILabel *answerLabel;//public

@end
