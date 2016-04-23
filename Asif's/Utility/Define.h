//
//  Define.h
//  Asif's
//
//  Created by UsFromMini on 4/12/16.
//  Copyright © 2016 Asif. All rights reserved.
//

#define UIColorFromRGB(rgbValue) [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]
#define FactX  ([UIScreen mainScreen].bounds.size.width)/320
#define FactY  ([UIScreen mainScreen].bounds.size.height)/480
#define FactF (([UIScreen mainScreen].bounds.size.width) * ([UIScreen mainScreen].bounds.size.height))/(320*480)
#define Size [UIScreen mainScreen].bounds.size