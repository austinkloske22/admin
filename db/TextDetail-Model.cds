namespace Admin.TextDetailModel;

using Admin as Admin from './Data-Model';
using Admin.AssignmentModel as AssignmentModel from './Assignment-Model.cds';
using Admin.CommonModel as CommonModel from './Common-Model.cds';
using Admin.DropdownValueModel as DropdownValueModel from './DropdownValue-Model.cds';

entity CarrierMaster {
	key carrierMasterID : CommonModel.AdminKey;
	key locale			: CommonModel.LanguageCode @(title: '{i18n>locale}', Common.Label: '{i18n>locale}');
	description			: CommonModel.Description @(title: '{i18n>description}', Common.Label: '{i18n>description}');
	HasDraftEntity				: Boolean default true;
	HasActiveEntity				: Boolean default true;
	HasDraft					: Boolean default true;
	HasDraftAdministrativeData	: Boolean default false;
	HasDraftPreparationAction	: Boolean default false;
	HasDraftRoot				: Boolean default false;
	HasDraftValidationFunction	: Boolean default false;
	HasPreserveChanges			: Boolean default false;
	HasSiblingEntity			: Boolean default false;
	SiblingEntity				: Boolean default false;
	IsDraftEnabled				: Boolean default true;
	IsActiveEntity				: Boolean default true;
	IsDraftRoot					: Boolean default false;
	DraftAdministrativeData		: Boolean default false;
	CarrierMaster		: Association to one Admin.CarrierMaster on CarrierMaster.carrierMasterID = $self.carrierMasterID; 
}

entity ContentSource {
	key contentSourceID : CommonModel.AdminKey;
	key locale			: CommonModel.LanguageCode @(title: '{i18n>locale}', Common.Label: '{i18n>locale}');
	description			: CommonModel.Description @(title: '{i18n>description}', Common.Label: '{i18n>description}');
	ContentSource		: Association to one Admin.ContentSource on ContentSource.contentSourceID = $self.contentSourceID; 
}

entity ContentSourceValue {
	key contentSourceID	: CommonModel.AdminKey;
	key contentKeyID	: CommonModel.AdminKey;
	key locale			: CommonModel.LanguageCode @(title: '{i18n>locale}', Common.Label: '{i18n>locale}');
	description			: CommonModel.Description @(title: '{i18n>description}', Common.Label: '{i18n>description}');
	ContentSourceValue	: Association to one Admin.ContentSourceValue on ContentSourceValue.contentSourceID = $self.contentSourceID and ContentSourceValue.contentKeyID = $self.contentKeyID;
}

entity ContentSourceCarrier {
	key contentSourceID		: CommonModel.AdminKey;
	key carrierMasterID		: CommonModel.AdminKey;
	key locale				: CommonModel.LanguageCode @(title: '{i18n>locale}', Common.Label: '{i18n>locale}');
	description				: CommonModel.Description @(title: '{i18n>description}', Common.Label: '{i18n>description}');
	ContentSourceCarrier	: Association to one AssignmentModel.ContentSourceCarrier on ContentSourceCarrier.contentSourceID = $self.contentSourceID and ContentSourceCarrier.carrierMasterID = $self.carrierMasterID;
}

entity ContentSourceAction {
	key contentSourceID	: CommonModel.AdminKey;
	key contentActionID	: CommonModel.AdminKey;
	key locale			: CommonModel.LanguageCode @(title: '{i18n>locale}', Common.Label: '{i18n>locale}');
	description			: CommonModel.Description @(title: '{i18n>description}', Common.Label: '{i18n>description}');
	ContentSourceAction	: Association to one AssignmentModel.ContentSourceAction on ContentSourceAction.contentSourceID = $self.contentSourceID and ContentSourceAction.contentActionID = $self.contentActionID;
}

entity ContentSourceStatus {
	key contentSourceID		: CommonModel.AdminKey;
	key primaryStatusCode	: CommonModel.AdminKey;
	key secondaryStatusCode	: CommonModel.AdminKey;
	key locale				: CommonModel.LanguageCode @(title: '{i18n>locale}', Common.Label: '{i18n>locale}');
	description				: CommonModel.Description @(title: '{i18n>description}', Common.Label: '{i18n>description}');
	ContentSourceStatus		: Association to one Admin.ContentSourceStatus on ContentSourceStatus.contentSourceID = $self.contentSourceID;
}

entity ErrorMessage {
	key errorMessageID	: CommonModel.AdminKey;
	key locale			: CommonModel.LanguageCode @(title: '{i18n>locale}', Common.Label: '{i18n>locale}');
	description			: CommonModel.Description @(title: '{i18n>description}', Common.Label: '{i18n>description}');
	ErrorMessage		: Association to one Admin.ErrorMessage on ErrorMessage.errorMessageID = $self.errorMessageID; 
}

entity ContentAction {
	key contentActionID	: CommonModel.AdminKey;
	key locale			: CommonModel.LanguageCode @(title: '{i18n>locale}', Common.Label: '{i18n>locale}');
	description			: CommonModel.Description @(title: '{i18n>description}', Common.Label: '{i18n>description}');
	ContentAction		: Association to one Admin.ContentAction on ContentAction.contentActionID = $self.contentActionID; 
}

entity FeedType {
	key feedTypeID		: CommonModel.AdminKey;
	key locale			: CommonModel.LanguageCode @(title: '{i18n>locale}', Common.Label: '{i18n>locale}');
	description			: CommonModel.Description @(title: '{i18n>description}', Common.Label: '{i18n>description}');
	FeedType			: Association to one Admin.FeedType on FeedType.feedTypeID = $self.feedTypeID; 
}

entity ChargeType {
	key chargeTypeID		: CommonModel.AdminKey;
	key locale				: CommonModel.LanguageCode @(title: '{i18n>locale}', Common.Label: '{i18n>locale}');
	description				: CommonModel.Description @(title: '{i18n>description}', Common.Label: '{i18n>description}');
	ChargeType				: Association to one DropdownValueModel.ChargeType on ChargeType.chargeTypeID = $self.chargeTypeID;
}

entity FreightCostCode {
	key freightCostCodeID	: CommonModel.AdminKey;
	key locale				: CommonModel.LanguageCode @(title: '{i18n>locale}', Common.Label: '{i18n>locale}');
	description				: CommonModel.Description @(title: '{i18n>description}', Common.Label: '{i18n>description}');
	FreightCostCode			: Association to one DropdownValueModel.FreightCostCode on FreightCostCode.freightCostCodeID = $self.freightCostCodeID; 
}

entity DaysInTransitType {
	key daysInTransitTypeID	: CommonModel.AdminKey;
	key locale				: CommonModel.LanguageCode @(title: '{i18n>locale}', Common.Label: '{i18n>locale}');
	description				: CommonModel.Description @(title: '{i18n>description}', Common.Label: '{i18n>description}');
	DaysInTransitType		: Association to one DropdownValueModel.DaysInTransitType on DaysInTransitType.daysInTransitTypeID = $self.daysInTransitTypeID; 
}

entity CommitmentTimeType {
	key commitmentTimeTypeID	: CommonModel.AdminKey;
	key locale					: CommonModel.LanguageCode @(title: '{i18n>locale}', Common.Label: '{i18n>locale}');
	description					: CommonModel.Description @(title: '{i18n>description}', Common.Label: '{i18n>description}');
	CommitmentTimeType			: Association to one DropdownValueModel.CommitmentTimeType on CommitmentTimeType.commitmentTimeTypeID = $self.commitmentTimeTypeID; 
}

