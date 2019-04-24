namespace Admin;
using Admin.CommonModel as CommonModel from './Common-Model.cds';
using Admin.AssignmentModel as AssignmentModel from './Assignment-Model.cds';
using Admin.TextDetailModel as TextDetailModel from './TextDetail-Model';

entity CarrierMaster {
	key carrierMasterID		: CommonModel.AdminKey;
	logoURL					: CommonModel.LongString;
	status					: Boolean;
	ContentSourceCarriers	: Composition of many AssignmentModel.ContentSourceCarrier on ContentSourceCarriers.carrierMasterID = $self.carrierMasterID;
	CarrierMasterServices	: Composition of many CarrierMasterService on CarrierMasterServices.carrierMasterID = $self.carrierMasterID;
	TextDetails				: Composition of many TextDetailModel.CarrierMaster on TextDetails.carrierMasterID = $self.carrierMasterID;
}

entity ContentSource {
	key contentSourceID		: CommonModel.AdminKey;
	ContentSourceValues		: Composition of many Admin.ContentSourceValue on ContentSourceValues.contentSourceID = $self.contentSourceID;
	ContentSourceStatuss	: Composition of many Admin.ContentSourceStatus on ContentSourceStatuss.contentSourceID = $self.contentSourceID;
	ContentSourceCarriers	: Composition of many AssignmentModel.ContentSourceCarrier on ContentSourceCarriers.contentSourceID = $self.contentSourceID;
	ContentSourceActions	: Composition of many AssignmentModel.ContentSourceAction on ContentSourceActions.contentSourceID = $self.contentSourceID;
	TextDetails				: Composition of many TextDetailModel.ContentSource on TextDetails.contentSourceID = $self.contentSourceID;
} 

entity ContentSourceValue {
	key contentSourceID	: CommonModel.AdminKey;
	key contentKeyID	: CommonModel.AdminKey;
	contentValue		: CommonModel.LongString;
	TextDetails			: Composition of many TextDetailModel.ContentSourceValue on TextDetails.contentSourceID = $self.contentSourceID and TextDetails.contentKeyID = $self.contentKeyID;
}

entity ContentSourceStatus	{
	key contentSourceID			: CommonModel.AdminKey;
	key primaryStatusCode		: CommonModel.AdminKey;
	key secondaryStatusCode		: CommonModel.AdminKey;
	normalizedStatusCode		: CommonModel.Description;
	exceptionType				: CommonModel.Description;
	initialDeliveryAttempt		: Boolean;
	ContentSource				: Association to one Admin.ContentSource on ContentSource.contentSourceID = $self.contentSourceID;
	TextDetails					: Composition of many TextDetailModel.ContentSourceStatus on TextDetails.contentSourceID = $self.contentSourceID and TextDetails.primaryStatusCode = $self.primaryStatusCode and TextDetails.secondaryStatusCode = $self.secondaryStatusCode;
}

entity ErrorMessage {
	key errorMessageID	: CommonModel.AdminKey;
	TextDetails			: Composition of many TextDetailModel.ErrorMessage on TextDetails.errorMessageID = $self.errorMessageID;
} 

entity ContentAction {
	key contentActionID		: CommonModel.AdminKey;
	ContentSourceActions	: Composition of many AssignmentModel.ContentSourceAction on ContentSourceActions.contentActionID = $self.contentActionID;
	TextDetails				: Composition of many TextDetailModel.ContentAction on TextDetails.contentActionID = $self.contentActionID;
}

entity FeedType {
	key feedTypeID	: CommonModel.AdminKey;
	TextDetails		: Composition of many TextDetailModel.FeedType on TextDetails.feedTypeID = $self.feedTypeID;
}

entity CarrierServiceType {
	key carrierServiceTypeID	: CommonModel.AdminKey;
	TextDetails					: Composition of many TextDetailModel.CarrierServiceType on TextDetails.carrierServiceTypeID = $self.carrierServiceTypeID;
}

entity CarrierServiceCategory {
	key carrierServiceCategoryID	: CommonModel.AdminKey;
	TextDetails						: Composition of many TextDetailModel.CarrierServiceCategory on TextDetails.carrierServiceCategoryID = $self.carrierServiceCategoryID;
}

entity CarrierMasterService {
	key carrierMasterID		: CommonModel.AdminKey;
	key carrierServiceID	: CommonModel.AdminKey;
	carrierServiceType		: CommonModel.AdminKey;
	commitmentTimeType		: CommonModel.AdminKey;
	commitmentTime			: CommonModel.AdminKey;
	daysInTransitType		: CommonModel.AdminKey;
	daysInTransit			: Integer;
	status					: Boolean;
	CarrierMaster			: Association to one CarrierMaster on CarrierMaster.carrierMasterID = $self.carrierMasterID;
}

