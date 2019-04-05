namespace admin;
using from './common-model';

using admin.commonModel as commonModel from './common-model';

entity contentSource {
	key UUID				: UUID; 
	ID						: commonModel.adminKey not null;
	textDetails				: Association to many commonModel.textDetail on textDetails.UUID = $self.UUID;
	contentSourceActions	: Association to many contentSourceAction on contentSourceActions.UUID = $self.UUID; 
}

entity contentAction {
	key UUID	:	UUID; 
	ID			:	commonModel.adminKey not null;
	contentSourceAction : Association[*] to contentSourceAction on contentSourceAction.ActionUUID = $self.UUID;
	textDetails	:	Association to many commonModel.textDetail on textDetails.UUID = $self.UUID;
}

entity contentSourceAction {
	key UUID	: UUID;
	ActionUUID	: UUID;
	contentSource	: Association to one contentSource on contentSource.UUID = $self.UUID;
	contentAction	: Association to many contentAction on contentAction.UUID = $self.ActionUUID;
}

entity feedType {
	key UUID	:	UUID; 
	ID			:	commonModel.adminKey not null;
	textDetails	:	Association to many commonModel.textDetail on textDetails.UUID = $self.UUID;
}

entity errorMessage {
	key UUID	:	UUID;
	ID			:	commonModel.adminKey not null;
	textDetails	:	Association to many commonModel.textDetail on textDetails.UUID = $self.UUID;
}

