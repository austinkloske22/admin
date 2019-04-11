namespace admin;
using admin.commonModel as commonModel from './common-model';
using admin.assignmentModel as assignmentModel from './assignment-model.cds';

entity carrierMaster {
	key UUID					: UUID;
	ID							: commonModel.adminKey not null;
	logoURL						: commonModel.longString;
	status						: Boolean;
	to_textDetails				: Association to many commonModel.textDetail on to_textDetails.UUID = $self.UUID;
}

entity contentSource {
	key UUID					: UUID; 
	ID							: commonModel.adminKey not null;
	to_contentActionAssignments	: Association to many assignmentModel.contentActionAssignment on to_contentActionAssignments.assignmentUUID = UUID and to_contentActionAssignments.ID = ID;
	to_textDetails				: Association to many commonModel.textDetail on to_textDetails.UUID = UUID;
	to_contentSourceStatuss		: Association to many admin.contentSourceStatus on to_contentSourceStatuss.parentUUID = UUID;
	} 

entity contentValue {
	key UUID					: UUID;
	ID							: commonModel.adminKey not null;
	value						: commonModel.adminKey;
	to_textDetails				: Association to many commonModel.textDetail on to_textDetails.UUID = $self.UUID;
}

entity contentSourceStatus	{
	key UUID					: UUID;
	parentUUID					: UUID not null;
	primaryStatusCode			: commonModel.adminKey not null;
	secondaryStatusCode			: commonModel.adminKey not null;
	normalizedStatusCode		: commonModel.description;
	exceptionType				: commonModel.description;
	initialDeliveryAttempt		: Boolean;
	to_contentSource			: Association to one admin.contentSource on to_contentSource.UUID = parentUUID;
	to_textDetails				: Association to many commonModel.textDetail on to_textDetails.UUID = UUID;
}

entity errorMessage {
	key UUID		: UUID;
	ID				: commonModel.adminKey not null;
	to_textDetails		: Association to many commonModel.textDetail on to_textDetails.UUID = $self.UUID;
} 

entity contentAction {
	key UUID	:	UUID; 
	parentUUID	:	UUID not null;
	ID			:	commonModel.adminKey not null;
	value		:	commonModel.longString;
	to_contentSource : Association to one admin.contentSource on to_contentSource.UUID = $self.parentUUID;
	to_textDetails	 :	Association to many commonModel.textDetail on to_textDetails.UUID = $self.UUID;
}

entity feedType {
	key UUID	:	UUID not null; 
	ID			:	commonModel.adminKey not null;
	to_textDetails	:	Association to many commonModel.textDetail on to_textDetails.parentUUID = $self.UUID;
}