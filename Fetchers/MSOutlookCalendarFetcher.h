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



#ifndef MSOUTLOOKCALENDARFETCHER_H
#define MSOUTLOOKCALENDARFETCHER_H

#import "MSOutlookModels.h"
#import "api/api.h"
#import "core/core.h"
#import "core/MSOrcEntityFetcher.h"

@class MSOutlookEventCollectionFetcher;
@class MSOutlookEventCollectionFetcher;
@class MSOutlookEventFetcher;
@class MSOutlookCalendarOperations;


/** MSOutlookCalendarFetcher
 *
 */
@interface MSOutlookCalendarFetcher : MSOrcEntityFetcher

@property (copy, nonatomic, readonly) MSOutlookCalendarOperations *operations;

- (instancetype)initWithUrl:(NSString*)urlComponent parent:(id<MSOrcExecutable>)parent;
- (void)readWithCallback:(void (^)(MSOutlookCalendar *, MSOrcError *))callback;
- (void)update:(MSOutlookCalendar *)Calendar callback:(void (^)(MSOutlookCalendar *, MSOrcError*))callback ;
- (void)delete:(void(^)(int status, MSOrcError *))callback;
- (MSOutlookCalendarFetcher *)addCustomParametersWithName:(NSString *)name value:(id)value;
- (MSOutlookCalendarFetcher *)addCustomHeaderWithName:(NSString *)name value:(NSString *)value;
- (MSOutlookCalendarFetcher *)select:(NSString *)params;
- (MSOutlookCalendarFetcher *)expand:(NSString *)value;
@property (strong, nonatomic, readonly, getter=events) MSOutlookEventCollectionFetcher *events;

- (MSOutlookEventFetcher *)eventsById:(id)identifier;

@property (strong, nonatomic, readonly, getter=calendarView) MSOutlookEventCollectionFetcher *calendarView;

- (MSOutlookEventFetcher *)calendarViewById:(id)identifier;


@end

#endif
