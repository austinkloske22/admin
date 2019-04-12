namespace admin.assignmentModel;

using admin as admin from './data-model';
using admin.commonModel as commonModel from './common-model';

entity contentActionAssignment {
	key UUID			: UUID;
	parentUUID			: UUID not null;
	assignmentUUID		: UUID not null;
	ID					: commonModel.adminKey NOT NULL;
	to_contentSource	: Association to one admin.contentSource on to_contentSource.UUID = $self.parentUUID;
	to_contentAction	: Association to one admin.contentAction on to_contentAction.UUID = $self.assignmentUUID and to_contentAction.ID = $self.ID;
	to_textDetails		: Association to many commonModel.textDetail on to_textDetails.parentUUID = $self.assignmentUUID;
}