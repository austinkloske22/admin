namespace admin.normalizationModel;

using admin as admin from './data-model';
using admin.commonModel as commonModel from './common-model';

entity carrierMasterNormalization {
	key UUID			: UUID; 
	parentUUID			: UUID not null;
	assignmentUUID		: UUID not null;
	ID					: commonModel.adminKey NOT NULL;
	normalizedID		: commonModel.adminKey;
	to_contentSource	: Association to one admin.contentSource on to_contentSource.UUID = $self.parentUUID;
	to_carrierMaster	: Association to one admin.carrierMaster on to_carrierMaster.UUID = $self.assignmentUUID and to_carrierMaster.ID = $self.ID;
	to_textDetails		: Association to many commonModel.textDetail on to_textDetails.parentUUID = $self.assignmentUUID;
}