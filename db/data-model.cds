namespace admin;
using admin.commonModel as commonModel from './common-model.cds';
using admin.assignmentModel as assignmentModel from './assignment-model.cds';
using admin.normalizationModel as normalizationModel from './normalize-model.cds';

entity carrierMaster {
	key UUID					: UUID;
	ID							: commonModel.adminKey not null;
	logoURL						: commonModel.longString;
	status						: Boolean;
	to_textDetails				: Association to many commonModel.textDetail on to_textDetails.parentUUID = $self.UUID;
}

entity contentSource {
	key UUID						: UUID; 
	ID								: commonModel.adminKey not null;
	to_contentActionAssignments		: Association to many assignmentModel.contentActionAssignment on to_contentActionAssignments.parentUUID = $self.UUID;
	to_textDetails					: Association to many commonModel.textDetail on to_textDetails.parentUUID = $self.UUID;
	to_contentSourceStatuss			: Association to many admin.contentSourceStatus on to_contentSourceStatuss.parentUUID = $self.UUID;
	to_carrierMasterNormalizations	: Association to many normalizationModel.carrierMasterNormalization on to_carrierMasterNormalizations.parentUUID = $self.UUID;
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