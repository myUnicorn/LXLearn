//
//  LXVerficationButton.m
//  LXVerficationButton
//
//  Created by 李鑫 on 16/6/23.
//  Copyright © 2016年 lixin. All rights reserved.
//
#define  StatSecond 4;

#import "LXVerficationButton.h"

@interface LXVerficationButton ()
@property(nonatomic,strong)NSTimer * timer;
@property(nonatomic,assign)int seconds;
@end

@implementation LXVerficationButton

-(instancetype)initWithFrame:(CGRect)frame{
    
    if (self=[super initWithFrame:frame]) {
        [self setUp];
    }
    return self;
}



-(void)awakeFromNib{
    [self setUp];
}
-(void)setUp{
    
    [self setTitle:@"获取验证码" forState:UIControlStateNormal];
    self.titleLabel.font =[UIFont systemFontOfSize:13];
    [self setBackgroundImage:[UIImage imageNamed:@"获取验证码1"] forState:UIControlStateNormal];
    [self setBackgroundImage:[UIImage imageNamed:@"获取验证码"] forState:UIControlStateDisabled];

    [self addTarget:self action:@selector(click) forControlEvents:UIControlEventTouchUpInside];
}
-(void)click{
    self.seconds =StatSecond;

    self.enabled=NO;
    [self setTitle:[NSString stringWithFormat:@"%d秒",self.seconds] forState:UIControlStateDisabled];

    self.timer= [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(timeCount) userInfo:nil repeats:YES];
    
}
-(void)timeCount{
    --self.seconds;
    NSLog(@"%d",self.seconds);
    [self setTitle:[NSString stringWithFormat:@"%d秒",self.seconds] forState:UIControlStateDisabled];
    if (self.seconds ==0) {
        self.enabled=YES;
        [self setTitle:@"重新获取" forState:UIControlStateNormal];
        [self.timer invalidate];
        self.timer=nil;
        
    }

}
-(void)setHighlighted:(BOOL)highlighted{
    
}
@end
