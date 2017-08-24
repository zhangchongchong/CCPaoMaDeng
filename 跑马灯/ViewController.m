//
//  ViewController.m
//  跑马灯
//
//  Created by 张冲 on 2017/8/24.
//  Copyright © 2017年 张冲. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *PMDlabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
   __block CGRect frame =  _PMDlabel.frame;
    frame.origin.x = self.view.frame.size.width;
    [NSTimer scheduledTimerWithTimeInterval:0.05 repeats:YES block:^(NSTimer * _Nonnull timer) {
        
        frame.origin.x = frame.origin.x-1;
        
         if ((frame.origin.x+frame.size.width)<=0) {
             frame.origin.x = self.view.frame.size.width;
        }
        _PMDlabel.frame =frame;
        
        
    }];
    
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
