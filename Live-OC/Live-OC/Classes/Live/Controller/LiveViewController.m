//
//  LiveViewController.m
//  Live-OC
//
//  Created by 张向东 on 2017/9/4.
//  Copyright © 2017年 张向东. All rights reserved.
//

#import "LiveViewController.h"
#import "LFLivePreview.h"

@interface LiveViewController ()

@end

@implementation LiveViewController

- (void)viewDidLoad {
    [super viewDidLoad];

}

- (IBAction)closeLive:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}
- (IBAction)startLive:(id)sender {
    
    UIView * back = [[UIView alloc] initWithFrame:self.view.bounds];
    back.backgroundColor = [UIColor blackColor];
    [self.view addSubview:back];
    
    LFLivePreview * liveView = [[LFLivePreview alloc] initWithFrame:self.view.bounds];
    [self.view addSubview:liveView];
    [liveView startLive];
    
}
@end
