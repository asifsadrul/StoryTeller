//
//  DataClass.m
//  Asif's
//
//  Created by UsFromMini on 4/18/16.
//  Copyright © 2016 Asif. All rights reserved.
//

#import "DataClass.h"

@implementation DataClass
@synthesize managedObjectContext,persistentStoreCoordinator,managedObjectModel;

-(BOOL)insertUser:(EUser*)eUser{
    
    BOOL success=YES;
    
    User *user = [NSEntityDescription insertNewObjectForEntityForName:@"User"
                                               inManagedObjectContext:[self managedObjectContext]];
    
    user = [self getManageObjWithManageObj:user FromEntity:eUser];
    
    
    NSError *error = nil;
    // Save the object to persistent store
    if (![[self managedObjectContext] save:&error]) {
        success=NO;
        NSLog(@"Can't Save! %@ %@", error, [error localizedDescription]);
    }
    return success;
}

-(NSArray*)authenticateUserByUserName:(NSString*)userName andPassword:(NSString*)userPassword ManageObj:(BOOL)manage{
    
    
    NSFetchRequest *request = [[NSFetchRequest alloc] init];
    
    [request setEntity:[NSEntityDescription entityForName:@"User" inManagedObjectContext:[self managedObjectContext]]];
    
    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"userName = %@ AND password = %@", userName, userPassword];
    
    [request setPredicate:predicate];
    
    NSArray* fetchData = [[[self managedObjectContext] executeFetchRequest:request error:nil] mutableCopy];
    
    NSMutableArray *dataArray=[[NSMutableArray alloc]init];
    
    if (fetchData.count) {
        
        if (manage) {
            return fetchData;
        }
        else{
            
            for (User *user in fetchData) {
                
                [dataArray addObject:[self getEntityObjFromManageObj:user]];
            }
            return dataArray;
            
        }
    }
    return nil;
    
}
-(BOOL)isUserAlreadyExist:(NSString*)userName{
    
    NSFetchRequest *request = [[NSFetchRequest alloc] init];
    AppDelegate* appDelegate = (AppDelegate*)[[UIApplication sharedApplication]delegate];

    [request setEntity:[NSEntityDescription entityForName:@"User" inManagedObjectContext:[self managedObjectContext]]];
    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"userName == %@", userName];

    [request setPredicate:predicate];

   NSArray*  fetchData = [[self.managedObjectContext executeFetchRequest:request error:nil] mutableCopy];

    NSLog(@"data count here:%zd",fetchData.count);

    if(fetchData.count>0){
        return TRUE;
    }

    return FALSE;
}

-(id)getManageObjWithManageObj:(id)manageObj FromEntity:(id)entityObj{
    
    id manageObject;
    
    if([entityObj isKindOfClass: [EUser class]]){
        
        EUser *eUser=(EUser*)entityObj;
        
        User *user=(User*)manageObj;
        
        user.name = eUser.Name;
        user.userName = eUser.UserName;
        user.password = eUser.Password;
        
        
        manageObject = user;
        
        return manageObject;
        
        
    }
    
   
    
    
    return  nil;
}

-(id)getEntityObjFromManageObj:(id)manageObj{
    
    id entityObj;
    
    if([manageObj isKindOfClass: [User class]]){
        
        EUser *eUser = [[EUser alloc]init];
        
        User *user=(User*)manageObj;
        
        eUser.Name = user.name;
        eUser.Password = user.password;
        
        
        entityObj=eUser;
        
        return entityObj;
        
    }
    

    
    return nil;
    
}


#pragma mark - Core Data stack


- (NSURL *)applicationDocumentsDirectory {
    // The directory the application uses to store the Core Data store file. This code uses a directory named "com.novus.Asif_s" in the application's documents directory.
    return [[[NSFileManager defaultManager] URLsForDirectory:NSDocumentDirectory inDomains:NSUserDomainMask] lastObject];
}

- (NSManagedObjectModel *)managedObjectModel {
    // The managed object model for the application. It is a fatal error for the application not to be able to find and load its model.
    //AppDelegate* appDelegate = (AppDelegate*)[[UIApplication sharedApplication]delegate];

    if (managedObjectModel != nil) {
        return managedObjectModel;
    }
    NSURL *modelURL = [[NSBundle mainBundle] URLForResource:@"Asif_s" withExtension:@"momd"];
    managedObjectModel = [[NSManagedObjectModel alloc] initWithContentsOfURL:modelURL];
    return managedObjectModel;
}

- (NSPersistentStoreCoordinator *)persistentStoreCoordinator {
    // The persistent store coordinator for the application. This implementation creates and returns a coordinator, having added the store for the application to it.
    //AppDelegate* appDelegate = (AppDelegate*)[[UIApplication sharedApplication]delegate];

    if (persistentStoreCoordinator != nil) {
        return persistentStoreCoordinator;
    }
    
    // Create the coordinator and store
    
    persistentStoreCoordinator = [[NSPersistentStoreCoordinator alloc] initWithManagedObjectModel:[self managedObjectModel]];
    NSURL *storeURL = [[self applicationDocumentsDirectory] URLByAppendingPathComponent:@"Asif_s.sqlite"];
    NSError *error = nil;
    NSString *failureReason = @"There was an error creating or loading the application's saved data.";
    if (![self.persistentStoreCoordinator addPersistentStoreWithType:NSSQLiteStoreType configuration:nil URL:storeURL options:nil error:&error]) {
        // Report any error we got.
        NSMutableDictionary *dict = [NSMutableDictionary dictionary];
        dict[NSLocalizedDescriptionKey] = @"Failed to initialize the application's saved data";
        dict[NSLocalizedFailureReasonErrorKey] = failureReason;
        dict[NSUnderlyingErrorKey] = error;
        error = [NSError errorWithDomain:@"YOUR_ERROR_DOMAIN" code:9999 userInfo:dict];
        // Replace this with code to handle the error appropriately.
        // abort() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
        NSLog(@"Unresolved error %@, %@", error, [error userInfo]);
        abort();
    }
    
    return persistentStoreCoordinator;
}


- (NSManagedObjectContext *)managedObjectContext {
    // Returns the managed object context for the application (which is already bound to the persistent store coordinator for the application.)
    //AppDelegate* appDelegate = (AppDelegate*)[[UIApplication sharedApplication]delegate];
    
    

    if (managedObjectContext != nil) {
        return managedObjectContext;
    }
    
    NSPersistentStoreCoordinator *coordinator = [self persistentStoreCoordinator];
    if (!coordinator) {
        return nil;
    }
    managedObjectContext = [[NSManagedObjectContext alloc] initWithConcurrencyType:NSMainQueueConcurrencyType];
    [managedObjectContext setPersistentStoreCoordinator:coordinator];
    return managedObjectContext;
}

#pragma mark - Core Data Saving support

- (void)saveContext {
    NSManagedObjectContext *managedObjectContex = managedObjectContext;
    if (managedObjectContex != nil) {
        NSError *error = nil;
        if ([managedObjectContex hasChanges] && ![managedObjectContex save:&error]) {
            // Replace this implementation with code to handle the error appropriately.
            // abort() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
            NSLog(@"Unresolved error %@, %@", error, [error userInfo]);
            abort();
        }
    }
}

@end
