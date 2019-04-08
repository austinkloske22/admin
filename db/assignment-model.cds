namespace admin.assignmentModel;

using admin as admin from './data-model';
using admin.commonModel as commonModel from './common-model';


entity contentActionAssignment {
	key UUID			: UUID;
	key assignmentUUID	: UUID;
	ID					: commonModel.adminKey NOT NULL;
	contentSource		: Association to one admin.contentSource on contentSource.UUID = $self.UUID;
	contentAction		: Association to one admin.contentAction on contentAction.UUID = $self.UUID and contentAction.ID = $self.ID;
	textDetails			: Association to many assignmentModel.contentActionAssignment on textDetails.UUID = $self.assignmentUUID;
}