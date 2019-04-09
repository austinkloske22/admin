namespace admin;
using admin.commonModel as commonModel from './common-model';
using admin.assignmentModel as assignmentModel from './assignment-model.cds';

entity contentSource {
	key UUID					: UUID; 
	ID							: commonModel.adminKey not null;
	contentActionAssignments	: Association to many assignmentModel.contentActionAssignment on contentActionAssignments.UUID = $self.UUID;
	textDetails					: Association to many commonModel.textDetail on textDetails.UUID = $self.UUID;
	contentSourceStatuss		: Association to many admin.contentSourceStatus on contentSourceStatuss.UUID = $self.UUID;
	} 

entity contentSourceStatus	{
	key UUID					: UUID;
	key ITEM_UUID				: UUID;
	primaryStatusCode			: commonModel.adminKey not null;
	secondaryStatusCode			: commonModel.adminKey not null;
	normalizedStatusCode		: commonModel.description;
	exceptionType				: commonModel.description;
	initialDeliveryAttempt		: Boolean;
	contentSources				: Association to one admin.contentSource on contentSources.UUID = $self.UUID;
	textDetails					: Association to many commonModel.textDetail on textDetails.UUID = $self.UUID and textDetails.ITEM_UUID = $self.ITEM_UUID;
}

entity errorMessage {

	key UUID	:	UUID;
	ID			:	commonModel.adminKey not null;
	textDetails	:	Association to many commonModel.textDetail on textDetails.UUID = $self.UUID;
} 

entity contentAction {
	key UUID	:	UUID; 
	ID			:	commonModel.adminKey not null;
	textDetails	:	Association to many commonModel.textDetail on textDetails.UUID = $self.UUID;
}

entity feedType {
	key UUID	:	UUID not null; 
	ID			:	commonModel.adminKey not null;
	textDetails	:	Association to many commonModel.textDetail on textDetails.UUID = $self.UUID;
}