namespace admin;
using admin.commonModel as commonModel from './common-model.cds';
using admin.assignmentModel as assignmentModel from './assignment-model.cds';

entity carrierMaster {
	key UUID					: UUID;
	ID							: commonModel.adminKey not null;
	logoURL						: commonModel.longString;
	status						: Boolean;
	to_carrierMasterAssignments	: Association to many admin.carrierMasterAssignment on to_carrierMasterAssignments.carrierMasterID = $self.ID; 
	to_textDetails				: Association to many commonModel.textDetail on to_textDetails.parentUUID = $self.UUID;
}

entity contentSource {
	key UUID						: UUID; 
	ID								: commonModel.adminKey not null;
	to_contentSourceStatuss			: Association to many admin.contentSourceStatus on to_contentSourceStatuss.parentUUID = $self.UUID;
	to_contentActionAssignments		: Association to many assignmentModel.contentActionAssignment on to_contentActionAssignments.parentUUID = $self.UUID;
	to_textDetails					: Association to many commonModel.textDetail on to_textDetails.parentUUID = $self.UUID;
	to_carrierMasterAssignments		: Association to many admin.carrierMasterAssignment on to_carrierMasterAssignments.parentUUID = $self.UUID;
} 

entity carrierMasterAssignment {
	key UUID			: UUID;
	parentUUID			: UUID not null;
	ID					: commonModel.adminKey;
	carrierMasterID		: commonModel.adminKey;
	to_contentSource	: Association to one admin.contentSource on to_contentSource.UUID = $self.parentUUID;
	to_carrierMaster	: Association to one admin.carrierMaster on to_carrierMaster.ID = $self.carrierMasterID;
}
entity contentValue {
	key UUID					: UUID;
	parentUUID					: UUID not null;
	ID							: commonModel.adminKey not null;
	value						: commonModel.longString;
	to_textDetails				: Association to many commonModel.textDetail on to_textDetails.parentUUID = $self.UUID;
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
	to_textDetails				: Association to many commonModel.textDetail on to_textDetails.parentUUID = UUID;
}

entity errorMessage {
	key UUID		: UUID;
	ID				: commonModel.adminKey not null;
	to_textDetails		: Association to many commonModel.textDetail on to_textDetails.parentUUID = $self.UUID;
} 

entity contentAction {
	key UUID	:	UUID; 
	ID			:	commonModel.adminKey not null;
	to_contentActionAssignment	: Association to many assignmentModel.contentActionAssignment on to_contentActionAssignment.assignmentUUID = $self.UUID and to_contentActionAssignment.ID = $self.ID;
	to_textDetails				: Association to many commonModel.textDetail on to_textDetails.parentUUID = $self.UUID;
}

entity feedType {
	key UUID	:	UUID not null; 
	ID			:	commonModel.adminKey not null;
	to_textDetails	:	Association to many commonModel.textDetail on to_textDetails.parentUUID = $self.UUID;
}