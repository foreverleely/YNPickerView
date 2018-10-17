//
//  NextViewController.m
//  YNPickerViewDemo
//
//  Created by liyangly on 2018/10/16.
//  Copyright © 2018 liyang. All rights reserved.
//

#import "NextViewController.h"
//
#import "YNPickerView.h"
// pod
#import "Masonry.h"

#ifndef SCREEN_WIDTH
#define SCREEN_WIDTH [[UIScreen mainScreen] bounds].size.width
#endif

#ifndef SCREEN_HEIGHT
#define SCREEN_HEIGHT [[UIScreen mainScreen] bounds].size.height
#endif

@interface NextViewController ()

@property (nonatomic, strong) UIButton *openBtn;

@property (nonatomic, strong) YNPickerView *pickerView;

@end

@implementation NextViewController

#pragma mark - LifeCycle

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self configViews];
}

- (void)configViews {
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    [self.view addSubview:self.openBtn];
    [self.openBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.mas_equalTo(self.view);
        make.width.mas_equalTo(200);
        make.height.mas_equalTo(44);
    }];
}

#pragma mark - UIControl Actions
- (void)openPickerView {
    
//    UIWindow *window = [[UIApplication sharedApplication] keyWindow];
//    [window addSubview:self.pickerView];
//    [self.pickerView mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.left.right.bottom.mas_equalTo(window);
//        make.height.mas_equalTo(190);
//    }];
    [[[UIApplication sharedApplication] keyWindow] addSubview:self.pickerView];
    self.pickerView.frame = CGRectMake(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT);
}

#pragma mark - Getters
- (UIButton *)openBtn {
    if (!_openBtn) {
        _openBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        [_openBtn setTitle:@"open pickerview" forState:UIControlStateNormal];
        [_openBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [_openBtn addTarget:self action:@selector(openPickerView) forControlEvents:UIControlEventTouchUpInside];
    }
    return _openBtn;
}

- (YNPickerView *)pickerView {
    if (!_pickerView) {
        _pickerView = [[YNPickerView alloc] init];
        _pickerView.dataList = @[
                                 @[@"123",
                                   @"234",
                                   @"345",
                                   @"456",
                                   @"567",
                                   @"678",
                                   @"789",
                                   @"890",
                                   @"901"],
                                 
                                 @[@"abc",
                                   @"bcd",
                                   @"cde",
                                   @"def",
                                   @"efg",
                                   @"fgh",
                                   @"ghi",
                                   @"hij"]
                                 ];
//        _pickerView.viewType = YNPickerViewTypeCenter;
        _pickerView.doneAction = ^(NSString * _Nonnull result) {
            NSLog(@"%@", result);
        };
    }
    return _pickerView;
}

@end
