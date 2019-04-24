namespace Admin.ContentProvider;

using Admin.Common as Common from './Common-Model.cds';
using Admin.TextDetail as TextDetail from './TextDetail-Model';

entity ContentSource {
	key contentSourceID		: Common.AdminKey;
	ContentSourceValues		: Composition of many ContentSourceValue on ContentSourceValues.contentSourceID = $self.contentSourceID;
	ContentSourceStatuss	: Composition of many ContentSourceStatus on ContentSourceStatuss.contentSourceID = $self.contentSourceID;
	ContentSourceCarriers	: Composition of many ContentSourceCarrier on ContentSourceCarriers.contentSourceID = $self.contentSourceID;
	ContentSourceActions	: Composition of many ContentSourceAction on ContentSourceActions.contentSourceID = $self.contentSourceID;
	TextDetails				: Composition of many TextDetail.ContentSource on TextDetails.contentSourceID = $self.contentSourceID;
} 

entity ContentSourceCarrier {
	key contentSourceID			: Common.AdminKey;
	key carrierMasterID			: Common.AdminKey;
	contentSourceCarrierID		: Common.AdminKey;
	ContentSource				: Association to one ContentSource on ContentSource.contentSourceID = $self.contentSourceID;
	ContentSourceTextDetails	: Association to many TextDetail.ContentSource on ContentSourceTextDetails.contentSourceID = $self.contentSourceID;
	CarrierMasterTextDetails	: Association to many TextDetail.CarrierMaster on CarrierMasterTextDetails.carrierMasterID = $self.carrierMasterID;
}

entity ContentSourceAction {
	key contentSourceID			: Common.AdminKey;
	key contentActionID			: Common.AdminKey;
	ContentSource				: Association to one ContentSource on ContentSource.contentSourceID = $self.contentSourceID;
	ContentSourceTextDetails	: Association to many TextDetail.ContentSource on ContentSourceTextDetails.contentSourceID = $self.contentSourceID;
	ContentActionTextDetails	: Association to many TextDetail.ContentAction on ContentActionTextDetails.contentActionID = $self.contentActionID;
}

entity ContentSourceValue {
	key contentSourceID	: Common.AdminKey;
	key contentKeyID	: Common.AdminKey;
	contentValue		: Common.LongString;
	TextDetails			: Composition of many TextDetail.ContentSourceValue on TextDetails.contentSourceID = $self.contentSourceID and TextDetails.contentKeyID = $self.contentKeyID;
}

entity ContentSourceStatus	{
	key contentSourceID			: Common.AdminKey;
	key primaryStatusCode		: Common.AdminKey;
	key secondaryStatusCode		: Common.AdminKey;
	normalizedStatusCode		: Common.Description;
	exceptionType				: Common.Description;
	initialDeliveryAttempt		: Boolean;
	ContentSource				: Association to one ContentSource on ContentSource.contentSourceID = $self.contentSourceID;
	TextDetails					: Composition of many TextDetail.ContentSourceStatus on TextDetails.contentSourceID = $self.contentSourceID and TextDetails.primaryStatusCode = $self.primaryStatusCode and TextDetails.secondaryStatusCode = $self.secondaryStatusCode;
}

entity ContentAction {
	key contentActionID		: Common.AdminKey;
	ContentSourceActions	: Composition of many ContentSourceAction on ContentSourceActions.contentActionID = $self.contentActionID;
	TextDetails				: Composition of many TextDetail.ContentAction on TextDetails.contentActionID = $self.contentActionID;
}

entity FeedType {
	key feedTypeID	: Common.AdminKey;
	TextDetails		: Composition of many TextDetail.FeedType on TextDetails.feedTypeID = $self.feedTypeID;
}