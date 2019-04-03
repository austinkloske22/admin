namespace admin;
using from './common-model';

using admin.commonModel as commonModel from './common-model';
   
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