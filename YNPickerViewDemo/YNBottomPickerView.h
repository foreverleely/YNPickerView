//
//  YNBottomPickerView.h
//  
//
//  Created by liyangly on 2018/10/12.
//  Copyright © 2018 makeupopular.com. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface YNBottomPickerView : UIView

@property (nonatomic, strong) NSArray *dataList;

@property (nonatomic, copy) void (^cancelAction)(void);

@property (nonatomic, copy) void (^doneAction)(NSString *result);

/*************************/
//
@property (nonatomic, strong) NSString *pickViewTitle;

@property (nonatomic, strong) NSString *doneBtnTitle;

@end

NS_ASSUME_NONNULL_END
