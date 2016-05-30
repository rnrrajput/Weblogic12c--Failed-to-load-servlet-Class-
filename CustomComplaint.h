//
//  CustomComplaint.h
//  Healnt
//
//  Created by Ajay Mian on 26/05/16.
//  Copyright © 2016 alle. All rights reserved.
//

#import <UIKit/UIKit.h>
@class CustomComplaint;

@interface CustomComplaintOwner : NSObject

@end

@interface CustomComplaint : UIView
@property (strong, nonatomic) IBOutlet CustomComplaint *CustomComplaintView;
@property (strong, nonatomic) IBOutlet UITableView *ConditionSearchTableView;
@property (strong, nonatomic) IBOutlet NSLayoutConstraint *ConditionSearchViewHeight;
@property (strong, nonatomic) IBOutlet UIView *ConditionSearchView;

+(void)presentInViewController:(UIView*) viewController;
+(void)updateSize:(int)ssss;
-(void)updateWidth;
@end
