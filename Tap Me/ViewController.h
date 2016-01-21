//
//  ViewController.h
//  Tap Me
//
//  Created by Natalia Vilkarsis on 2016-01-20.
//
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UIAlertViewDelegate>{
    
    IBOutlet UILabel *scoreLabel;
    IBOutlet UILabel *timerLabel;
    
    NSInteger count;
    NSInteger seconds;
    NSTimer *timer;
    
}

- (IBAction)buttonPressed:(UIButton *)sender;


@end

