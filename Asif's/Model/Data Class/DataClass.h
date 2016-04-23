//
//  DataClass.h
//  Asif's
//
//  Created by UsFromMini on 4/18/16.
//  Copyright © 2016 Asif. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AppDelegate.h"
#import "User.h"
#import "EUser.h"

@interface DataClass : NSObject

@property ( strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@property ( strong, nonatomic) NSManagedObjectModel *managedObjectModel;
@property ( strong, nonatomic) NSPersistentStoreCoordinator *persistentStoreCoordinator;


-(BOOL)isUserAlreadyExist:(NSString*)userName;
-(BOOL)insertUser:(EUser*)eUser;
-(NSArray*)authenticateUserByUserName:(NSString*)userName andPassword:(NSString*)userPassword ManageObj:(BOOL)manage;
@end
