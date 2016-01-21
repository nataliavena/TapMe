//
//  ViewController.m
//  Tap Me
//
//  Created by Natalia Vilkarsis on 2016-01-20.
//
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self setupGame];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonPressed:(UIButton *)sender {
    count++;
    scoreLabel.text = [NSString stringWithFormat:@"Score\n%li", (long)count];
}

-(void)setupGame{
    
    seconds = 30;
    count = 0;
    
    timerLabel.text = [NSString stringWithFormat:@"Time: %li", (long)seconds];
    scoreLabel.text = [NSString stringWithFormat:@"Score\n%li", (long)count];
    
    timer = [NSTimer scheduledTimerWithTimeInterval:1
                                             target:self
                                           selector:@selector(subtractTime)
                                           userInfo:nil
                                            repeats:YES];
}

-(void)subtractTime{
    
    seconds--;
    timerLabel.text = [NSString stringWithFormat:@"Time: %li", (long)seconds];
    
    if (seconds == 0) {
        
        [timer invalidate];
        
        UIAlertView *alert = [[UIAlertView alloc]
                              initWithTitle:@"Time is up!"
                              message:[NSString stringWithFormat:@"You scored %li points!", (long)count ]
                              delegate:self
                              cancelButtonTitle: @"Play Again"
                              otherButtonTitles:nil];
        [alert show];
    }
    
}

-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
    [self setupGame];
}

@end
