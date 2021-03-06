/*******************************************************************************
**NOTE** This code was generated by a tool and will occasionally be
overwritten. We welcome comments and issues regarding this code; they will be
addressed in the generation tool. If you wish to submit pull requests, please
do so for the templates in that tool.

This code was generated by Vipr (https://github.com/microsoft/vipr) using
the T4TemplateWriter (https://github.com/msopentech/vipr-t4templatewriter).

Copyright (c) Microsoft Corporation. All Rights Reserved.
Licensed under the Apache License 2.0; see LICENSE in the source repository
root for authoritative license information.﻿
******************************************************************************/



#ifndef MSOUTLOOKNOTIFICATIONFETCHER_H
#define MSOUTLOOKNOTIFICATIONFETCHER_H

#import "MSOutlookModels.h"
#import "api/api.h"
#import "core/core.h"
#import "core/MSOrcEntityFetcher.h"

@class MSOutlookEntityFetcher;
@class MSOutlookEntityFetcher;
@class MSOutlookNotificationOperations;


/** MSOutlookNotificationFetcher
 *
 */
@interface MSOutlookNotificationFetcher : MSOrcEntityFetcher

@property (copy, nonatomic, readonly) MSOutlookNotificationOperations *operations;

- (instancetype)initWithUrl:(NSString*)urlComponent parent:(id<MSOrcExecutable>)parent;
- (void)readWithCallback:(void (^)(MSOutlookNotification *, MSOrcError *))callback;
- (void)update:(MSOutlookNotification *)Notification callback:(void (^)(MSOutlookNotification *, MSOrcError*))callback ;
- (void)delete:(void(^)(int status, MSOrcError *))callback;
- (MSOutlookNotificationFetcher *)addCustomParametersWithName:(NSString *)name value:(id)value;
- (MSOutlookNotificationFetcher *)addCustomHeaderWithName:(NSString *)name value:(NSString *)value;
- (MSOutlookNotificationFetcher *)select:(NSString *)params;
- (MSOutlookNotificationFetcher *)expand:(NSString *)value;

@property (strong, nonatomic, readonly, getter=resourceData) MSOutlookEntityFetcher *resourceData;

@end

#endif
