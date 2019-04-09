namespace admin.assignmentModel;

using admin as admin from './data-model';
using admin.commonModel as commonModel from './common-model';


entity contentActionAssignment {
	key UUID			: UUID;
	key assignmentUUID	: UUID;
	ID					: commonModel.adminKey NOT NULL;
	contentSources		: Association to one admin.contentSource on contentSources.UUID = $self.UUID;
	contentActions		: Association to one admin.contentAction on contentActions.UUID = $self.UUID and contentActions.ID = $self.ID;
	textDetails			: Association to many assignmentModel.contentActionAssignment on textDetails.UUID = $self.assignmentUUID;
}