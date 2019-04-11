namespace admin.assignmentModel;

using admin as admin from './data-model';
using admin.commonModel as commonModel from './common-model';


entity contentActionAssignment {
	key UUID			: UUID;
	parentUUID			: UUID not null;
	assignmentUUID		: UUID not null;
	ID					: commonModel.adminKey NOT NULL;
	to_contentSource		: Association to one admin.contentSource on to_contentSource.UUID = $self.parentUUID;
	to_contentAction		: Association to one admin.contentAction on to_contentAction.UUID = $self.assignmentUUID and to_contentAction.ID = $self.ID;
	to_textDetails			: Association to many assignmentModel.contentActionAssignment on to_textDetails.UUID = $self.UUID;
}

entity carrierAssignment {
	key UUID			: UUID; 
	parentUUID			: UUID not null;
	assignmentUUID		: UUID not null;
	CarrierID			: commonModel.adminKey NOT NULL;
	AssignmentCarrier	: commonModel.adminKey;
	to_contentSource	: Association to one admin.contentSource on to_contentSource.UUID = $self.parentUUID;
	to_carrierMaster	: Association to one admin.carrierMaster on to_carrierMaster.UUID = $self.assignmentUUID and to_carrierMaster.ID = $self.CarrierID;
	to_textDetails		: Association to many commonModel.textDetail on to_textDetails.UUID = $self.UUID;
}