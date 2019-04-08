namespace admin;
using admin.commonModel as commonModel from './common-model';
using admin.assignmentModel as assignmentModel from './assignment-model.cds';


entity contentSource {
	key UUID					: UUID; 
	ID							: commonModel.adminKey not null;
	contentActionAssignments	: Association to many assignmentModel.contentActionAssignment on contentActionAssignments.UUID = $self.UUID;
	textDetails					: Association to many commonModel.textDetail on textDetails.UUID = $self.UUID;
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
	key UUID	:	UUID; 
	ID			:	commonModel.adminKey not null;
	textDetails	:	Association to many commonModel.textDetail on textDetails.UUID = $self.UUID;
}