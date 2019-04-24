namespace Admin.CarrierService;

using Admin.Common as Common from './Common-Model.cds';
using Admin.TextDetail as TextDetail from './TextDetail-Model';
using Admin.ContentProvider as ContentProvider from './ContentProvider-Model';

entity CarrierMaster {
	key carrierMasterID		: Common.AdminKey;
	logoURL					: Common.LongString;
	status					: Boolean;
	ContentSourceCarriers	: Composition of many ContentProvider.ContentSourceCarrier on ContentSourceCarriers.carrierMasterID = $self.carrierMasterID;
	CarrierMasterServices	: Composition of many CarrierMasterService on CarrierMasterServices.carrierMasterID = $self.carrierMasterID;
	TextDetails				: Composition of many TextDetail.CarrierMaster on TextDetails.carrierMasterID = $self.carrierMasterID;
}

entity CarrierMasterContentAction {
	key carrierMasterID			: Common.AdminKey;
	key contentActionID			: Common.AdminKey;
	contentSourceID 			: Common.AdminKey;
	CarrierMaster				: Association to one CarrierMaster on CarrierMaster.carrierMasterID = $self.carrierMasterID;
	CarrierMasterTextDetails	: Association to many TextDetail.CarrierMaster on CarrierMasterTextDetails.carrierMasterID = $self.carrierMasterID;
	ContentActionTextDetails	: Association to many TextDetail.ContentAction on ContentActionTextDetails.contentActionID = $self.contentActionID;
	ContentSourceTextDetails	: Association to many TextDetail.ContentSource on ContentSourceTextDetails.contentSourceID = $self.contentSourceID;
}

entity CarrierServiceType {
	key carrierServiceTypeID	: Common.AdminKey;
	TextDetails					: Composition of many TextDetail.CarrierServiceType on TextDetails.carrierServiceTypeID = $self.carrierServiceTypeID;
}

entity CarrierServiceCategory {
	key carrierServiceCategoryID	: Common.AdminKey;
	TextDetails						: Composition of many TextDetail.CarrierServiceCategory on TextDetails.carrierServiceCategoryID = $self.carrierServiceCategoryID;
}

entity CarrierMasterService {
	key carrierMasterID		: Common.AdminKey;
	key carrierServiceID	: Common.AdminKey;
	carrierServiceType		: Common.AdminKey;
	commitmentTimeType		: Common.AdminKey;
	commitmentTime			: Common.AdminKey;
	daysInTransitType		: Common.AdminKey;
	daysInTransit			: Integer;
	status					: Boolean;
	CarrierMaster			: Association to one CarrierMaster on CarrierMaster.carrierMasterID = $self.carrierMasterID;
}

