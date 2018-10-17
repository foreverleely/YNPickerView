//
//  ViewController.m
//  YNPickerViewDemo
//
//  Created by liyangly on 2018/10/16.
//  Copyright © 2018 liyang. All rights reserved.
//

#import "ViewController.h"
// vc
#import "NextViewController.h"
//
#import "YNPickerView.h"
// pod
#import "Masonry.h"

@interface ViewController ()

@property (nonatomic, strong) UIButton *nextBtn;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self configViews];
}

- (void)configViews {
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    [self.view addSubview:self.nextBtn];
    [self.nextBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.mas_equalTo(self.view);
        make.width.mas_equalTo(200);
        make.height.mas_equalTo(44);
    }];
}

#pragma mark - UIControl Actions
- (void)gotoNext {
    [self.navigationController pushViewController:[NextViewController new] animated:YES];
}

#pragma mark - Getters
- (UIButton *)nextBtn {
    if (!_nextBtn) {
        _nextBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        [_nextBtn setTitle:@"goto next" forState:UIControlStateNormal];
        [_nextBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [_nextBtn addTarget:self action:@selector(gotoNext) forControlEvents:UIControlEventTouchUpInside];
    }
    return _nextBtn;
}



@end
