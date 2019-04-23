namespace Admin.AssignmentModel;

using Admin as Admin from './Data-Model';
using Admin.CommonModel as CommonModel from './Common-Model';

entity ContentSourceCarrier {
	key contentSourceID		: CommonModel.AdminKey;
	key carrierMasterID		: CommonModel.AdminKey;
	contentSourceCarrierID	: CommonModel.AdminKey;
	ContentSource			: Association to one Admin.ContentSource on ContentSource.contentSourceID = $self.contentSourceID;
	CarrierMaster			: Association to one Admin.CarrierMaster on CarrierMaster.carrierMasterID = $self.carrierMasterID;
}

entity ContentSourceAction {
	key contentSourceID	: CommonModel.AdminKey;
	key contentActionID	: CommonModel.AdminKey;
	ContentSource		: Association to one Admin.ContentSource on ContentSource.contentSourceID = $self.contentSourceID;
	ContentAction		: Association to one Admin.ContentAction on ContentAction.contentActionID = $self.contentActionID;
}