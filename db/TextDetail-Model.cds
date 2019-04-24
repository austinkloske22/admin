namespace Admin.TextDetail;

using Admin.Common as Common from './Common-Model.cds';
using Admin.DropdownValue as DropdownValue from './DropdownValue-Model.cds';
using Admin.ContentProvider as ContentProvider from './ContentProvider-Model';
using Admin.CarrierService as CarrierService from './CarrierService-Model';

entity CarrierMaster {
	key carrierMasterID : Common.AdminKey;
	key locale			: Common.LanguageCode @(title: '{i18n>locale}', Common.Label: '{i18n>locale}');
	description			: Common.Description @(title: '{i18n>description}', Common.Label: '{i18n>description}');
	CarrierMaster		: Association to one CarrierService.CarrierMaster on CarrierMaster.carrierMasterID = $self.carrierMasterID; 
}

entity ContentSource {
	key contentSourceID : Common.AdminKey;
	key locale			: Common.LanguageCode @(title: '{i18n>locale}', Common.Label: '{i18n>locale}');
	description			: Common.Description @(title: '{i18n>description}', Common.Label: '{i18n>description}');
	ContentSource		: Association to one ContentProvider.ContentSource on ContentSource.contentSourceID = $self.contentSourceID; 
}

entity ContentSourceValue {
	key contentSourceID	: Common.AdminKey;
	key contentKeyID	: Common.AdminKey;
	key locale			: Common.LanguageCode @(title: '{i18n>locale}', Common.Label: '{i18n>locale}');
	description			: Common.Description @(title: '{i18n>description}', Common.Label: '{i18n>description}');
	ContentSourceValue	: Association to one ContentProvider.ContentSourceValue on ContentSourceValue.contentSourceID = $self.contentSourceID and ContentSourceValue.contentKeyID = $self.contentKeyID;
}

entity ContentSourceCarrier {
	key contentSourceID		: Common.AdminKey;
	key carrierMasterID		: Common.AdminKey;
	key locale				: Common.LanguageCode @(title: '{i18n>locale}', Common.Label: '{i18n>locale}');
	description				: Common.Description @(title: '{i18n>description}', Common.Label: '{i18n>description}');
	ContentSourceCarrier	: Association to one ContentProvider.ContentSourceCarrier on ContentSourceCarrier.contentSourceID = $self.contentSourceID and ContentSourceCarrier.carrierMasterID = $self.carrierMasterID;
}

entity ContentSourceAction {
	key contentSourceID	: Common.AdminKey;
	key contentActionID	: Common.AdminKey;
	key locale			: Common.LanguageCode @(title: '{i18n>locale}', Common.Label: '{i18n>locale}');
	description			: Common.Description @(title: '{i18n>description}', Common.Label: '{i18n>description}');
	ContentSourceAction	: Association to one ContentProvider.ContentSourceAction on ContentSourceAction.contentSourceID = $self.contentSourceID and ContentSourceAction.contentActionID = $self.contentActionID;
}

entity ContentSourceStatus {
	key contentSourceID		: Common.AdminKey;
	key primaryStatusCode	: Common.AdminKey;
	key secondaryStatusCode	: Common.AdminKey;
	key locale				: Common.LanguageCode @(title: '{i18n>locale}', Common.Label: '{i18n>locale}');
	description				: Common.Description @(title: '{i18n>description}', Common.Label: '{i18n>description}');
	ContentSourceStatus		: Association to one ContentProvider.ContentSourceStatus on ContentSourceStatus.contentSourceID = $self.contentSourceID;
}

entity ErrorMessage {
	key errorMessageID	: Common.AdminKey;
	key locale			: Common.LanguageCode @(title: '{i18n>locale}', Common.Label: '{i18n>locale}');
	description			: Common.Description @(title: '{i18n>description}', Common.Label: '{i18n>description}');
	ErrorMessage		: Association to one DropdownValue.ErrorMessage on ErrorMessage.errorMessageID = $self.errorMessageID; 
}

entity ContentAction {
	key contentActionID	: Common.AdminKey;
	key locale			: Common.LanguageCode @(title: '{i18n>locale}', Common.Label: '{i18n>locale}');
	description			: Common.Description @(title: '{i18n>description}', Common.Label: '{i18n>description}');
	ContentAction		: Association to one ContentProvider.ContentAction on ContentAction.contentActionID = $self.contentActionID; 
}

entity FeedType {
	key feedTypeID		: Common.AdminKey;
	key locale			: Common.LanguageCode @(title: '{i18n>locale}', Common.Label: '{i18n>locale}');
	description			: Common.Description @(title: '{i18n>description}', Common.Label: '{i18n>description}');
	FeedType			: Association to one ContentProvider.FeedType on FeedType.feedTypeID = $self.feedTypeID; 
}

entity ChargeType {
	key chargeTypeID		: Common.AdminKey;
	key locale				: Common.LanguageCode @(title: '{i18n>locale}', Common.Label: '{i18n>locale}');
	description				: Common.Description @(title: '{i18n>description}', Common.Label: '{i18n>description}');
	ChargeType				: Association to one DropdownValue.ChargeType on ChargeType.chargeTypeID = $self.chargeTypeID;
}

entity FreightCostCode {
	key freightCostCodeID	: Common.Description;
	key locale				: Common.LanguageCode @(title: '{i18n>locale}', Common.Label: '{i18n>locale}');
	description				: Common.Description @(title: '{i18n>description}', Common.Label: '{i18n>description}');
	FreightCostCode			: Association to one DropdownValue.FreightCostCode on FreightCostCode.freightCostCodeID = $self.freightCostCodeID; 
}

entity DaysInTransitType {
	key daysInTransitTypeID	: Common.AdminKey;
	key locale				: Common.LanguageCode @(title: '{i18n>locale}', Common.Label: '{i18n>locale}');
	description				: Common.Description @(title: '{i18n>description}', Common.Label: '{i18n>description}');
	DaysInTransitType		: Association to one DropdownValue.DaysInTransitType on DaysInTransitType.daysInTransitTypeID = $self.daysInTransitTypeID; 
}

entity CommitmentTimeType {
	key commitmentTimeTypeID	: Common.AdminKey;
	key locale					: Common.LanguageCode @(title: '{i18n>locale}', Common.Label: '{i18n>locale}');
	description					: Common.Description @(title: '{i18n>description}', Common.Label: '{i18n>description}');
	CommitmentTimeType			: Association to one DropdownValue.CommitmentTimeType on CommitmentTimeType.commitmentTimeTypeID = $self.commitmentTimeTypeID; 
}

entity CarrierServiceType {
	key carrierServiceTypeID	: Common.AdminKey;
	key locale					: Common.LanguageCode @(title: '{i18n>locale}', Common.Label: '{i18n>locale}');
	description					: Common.Description @(title: '{i18n>description}', Common.Label: '{i18n>description}');
	CarrierServiceType			: Association to one  CarrierService.CarrierServiceType on CarrierServiceType.carrierServiceTypeID = $self.carrierServiceTypeID;
}

entity CarrierServiceCategory {
	key carrierServiceCategoryID	: Common.AdminKey;
	key locale						: Common.LanguageCode @(title: '{i18n>locale}', Common.Label: '{i18n>locale}');
	description						: Common.Description @(title: '{i18n>description}', Common.Label: '{i18n>description}');
	CarrierServiceCategory			: Association to one CarrierService.CarrierServiceCategory on CarrierServiceCategory.carrierServiceCategoryID = $self.carrierServiceCategoryID;
}

entity CarrierMasterService {
	key carrierMasterID		: Common.AdminKey;
	key carrierServiceID	: Common.AdminKey;
	key locale				: Common.LanguageCode @(title: '{i18n>locale}', Common.Label: '{i18n>locale}');
	description				: Common.Description @(title: '{i18n>description}', Common.Label: '{i18n>description}');
	CarrierMasterService	: Association to one CarrierService.CarrierMasterService on CarrierMasterService.carrierMasterID = $self.carrierMasterID and CarrierMasterService.carrierServiceID = $self.carrierServiceID;
}
