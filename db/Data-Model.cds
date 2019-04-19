namespace Admin;
using Admin.CommonModel as CommonModel from './Common-Model.cds';
using Admin.AssignmentModel as AssignmentModel from './Assignment-Model.cds';
using Admin.TextDetailModel as TextDetailModel from './TextDetail-Model';

entity CarrierMaster {
	key carrierMasterID		: CommonModel.AdminKey;
	logoURL					: CommonModel.LongString;
	status					: Boolean;
	HasDraftEntity				: Boolean default true;
	HasActiveEntity				: Boolean default true;
	HasDraft					: Boolean default true;
	HasDraftAdministrativeData	: Boolean default true;
	HasDraftPreparationAction	: Boolean default true;
	HasDraftRoot				: Boolean default true;
	HasDraftValidationFunction	: Boolean default true;
	HasPreserveChanges			: Boolean default true;
	HasSiblingEntity			: Boolean default true;
	SiblingEntity				: Boolean default true;
	IsDraftEnabled				: Boolean default true;
	IsActiveEntity				: Boolean default true;
	IsDraftRoot					: Boolean default true;
	DraftAdministrativeData		: Boolean default true;
	ContentSourceCarriers	: Composition of many AssignmentModel.ContentSourceCarrier on ContentSourceCarriers.carrierMasterID = $self.carrierMasterID; 
	TextDetails				: Composition of many TextDetailModel.CarrierMaster on TextDetails.carrierMasterID = $self.carrierMasterID;
}

entity ContentSource {
	key contentSourceID		: CommonModel.AdminKey;
	ContentValues			: Composition of many Admin.ContentValue on ContentValues.contentSourceID = $self.contentSourceID;
	ContentSourceStatuss	: Composition of many Admin.ContentSourceStatus on ContentSourceStatuss.contentSourceID = $self.contentSourceID;
	ContentSourceCarriers	: Composition of many AssignmentModel.ContentSourceCarrier on ContentSourceCarriers.contentSourceID = $self.contentSourceID;
	TextDetails				: Composition of many TextDetailModel.ContentSource on TextDetails.contentSourceID = $self.contentSourceID;
} 

entity ContentValue {
	key contentSourceID	: CommonModel.AdminKey;
	key contentKeyID	: CommonModel.AdminKey;
	contentValue		: CommonModel.LongString;
	TextDetails			: Composition of many TextDetailModel.ContentValue on TextDetails.contentSourceID = $self.contentSourceID and TextDetails.contentKeyID = $self.contentKeyID;
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
	ContentActionAssignment	: Composition of many AssignmentModel.ContentAction on ContentActionAssignment.contentActionID = $self.contentActionID;
	TextDetails				: Composition of many TextDetailModel.ContentAction on TextDetails.contentActionID = $self.contentActionID;
}

entity FeedType {
	key feedTypeID	: CommonModel.AdminKey;
	TextDetails		: Composition of many TextDetailModel.FeedType on TextDetails.feedTypeID = $self.feedTypeID;
}