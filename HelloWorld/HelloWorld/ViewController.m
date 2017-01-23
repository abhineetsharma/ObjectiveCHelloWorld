//
//  ViewController.m
//  HelloWorld
//
//  Created by Abhineet Sharma on 1/22/17.
//  Copyright © 2017 Abhineet Sharma. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

int count = 0;
int aCount =0;
bool rFlag=NO;
int cY=0;
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)changeLabel:(id)sender {
    NSString * message = [NSString stringWithFormat:@"%@ Abhineet",@"Hello"];
    [[self myTextLabel] setText:message];
    NSTimer *timer = [NSTimer timerWithTimeInterval:2.0
                                             target:self
                                           selector:@selector(timerDidTick:)
                                           userInfo:nil repeats:YES];
    [[NSRunLoop mainRunLoop] addTimer:timer forMode:NSRunLoopCommonModes];
    self.btnClickMe.hidden =YES;
    
   
}
-(void) timerDidTick:(NSTimer*) theTimer{
    CATransition *animation = [CATransition animation];
    animation.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    animation.type = kCATransitionFade;
    animation.duration = 0.8;
    [self.myTextLabel.layer addAnimation:animation forKey:@"kCATransitionFade"];
    
    
    
    NSArray *strArray = [NSArray arrayWithObjects:@"BONJOUR",@"HOLA",@"NAY HOH",@"HALLO",@"NI HAU",@"CIAO",@"OLÀ",@"NAMASTE",@"HELLO",@"SALAAM",@"ZDRAS-TVUY-TE",@"MERHABA", @"KONNICHIWA",@"AHN-YOUNG-HA-SE-YO",@"",nil];
    if(strArray[count] == [strArray lastObject]){
        count=0;
    }
    NSString * message = [NSString stringWithFormat:@"%@ Abhineet",strArray[count]];
    message=[message capitalizedString];
    
    [[self myTextLabel] setText:message];
    if(aCount ==0){
        self.myTextLabel.textAlignment = NSTextAlignmentLeft;
        
        aCount++;
        rFlag =NO;
        
    }
    else if(aCount ==1){
        self.myTextLabel.textAlignment = NSTextAlignmentCenter;
        if(rFlag)aCount--;
        else aCount++;
    }
    else{
        self.myTextLabel.textAlignment = NSTextAlignmentRight;
        aCount--;
        rFlag = YES;
    }
    count++;
    int x = self.myTextLabel.frame.origin.x;
    int y= self.myTextLabel.frame.origin.y;
    int width = self.myTextLabel.frame.size.width;
    int height = self.myTextLabel.frame.size.height;
    int frameY = CGRectGetMaxY(self.view.frame);
        if(y+20>frameY)
    {
        cY=20;
    }
    cY+=30;
    self.myTextLabel.frame = CGRectMake(x,cY,width,height);
}


@end
