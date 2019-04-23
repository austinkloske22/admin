namespace Admin.AssignmentModel;

using Admin as Admin from './Data-Model';
using Admin.CommonModel as CommonModel from './Common-Model';
using Admin.TextDetailModel as TextDetailModel from './TextDetail-Model';

entity ContentSourceCarrier {
	key contentSourceID			: CommonModel.AdminKey;
	key carrierMasterID			: CommonModel.AdminKey;
	contentSourceCarrierID		: CommonModel.AdminKey;
	ContentSource				: Association to one Admin.ContentSource on ContentSource.contentSourceID = $self.contentSourceID;
	ContentSourceTextDetails	: Association to many TextDetailModel.ContentSource on ContentSourceTextDetails.contentSourceID = $self.contentSourceID;
	CarrierMasterTextDetails	: Association to many TextDetailModel.CarrierMaster on CarrierMasterTextDetails.carrierMasterID = $self.carrierMasterID;
	
}

entity ContentSourceAction {
	key contentSourceID			: CommonModel.AdminKey;
	key contentActionID			: CommonModel.AdminKey;
	ContentSource				: Association to one Admin.ContentSource on ContentSource.contentSourceID = $self.contentSourceID;
	ContentSourceTextDetails	: Association to many TextDetailModel.ContentSource on ContentSourceTextDetails.contentSourceID = $self.contentSourceID;
	ContentActionTextDetails	: Association to many TextDetailModel.ContentAction on ContentActionTextDetails.contentActionID = $self.contentActionID;
}

entity CarrierMasterContentAction {
	key carrierMasterID			: CommonModel.AdminKey;
	key contentActionID			: CommonModel.AdminKey;
	contentSourceID 			: CommonModel.AdminKey;
	CarrierMaster				: Association to one Admin.CarrierMaster on CarrierMaster.carrierMasterID = $self.carrierMasterID;
	CarrierMasterTextDetails	: Association to many TextDetailModel.CarrierMaster on CarrierMasterTextDetails.carrierMasterID = $self.carrierMasterID;
	ContentActionTextDetails	: Association to many TextDetailModel.ContentAction on ContentActionTextDetails.contentActionID = $self.contentActionID;
	ContentSourceTextDetails	: Association to many TextDetailModel.ContentSource on ContentSourceTextDetails.contentSourceID = $self.contentSourceID;
}

