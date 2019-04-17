namespace Admin.TextDetailModel;

using Admin as Admin from './Data-Model';
using Admin.AssignmentModel as AssignmentModel from './Assignment-Model.cds';
using Admin.CommonModel as CommonModel from './Common-Model.cds';

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

entity ContentValue {
	key contentSourceID	: CommonModel.AdminKey;
	key contentKey		: CommonModel.AdminKey;
	key locale			: CommonModel.LanguageCode @(title: '{i18n>locale}', Common.Label: '{i18n>locale}');
	description			: CommonModel.Description @(title: '{i18n>description}', Common.Label: '{i18n>description}');
	ContentValue		: Association to one Admin.ContentValue on ContentValue.contentSourceID = $self.contentSourceID and ContentValue.contentKey = $self.contentKey;
}

entity ContentSourceStatus {
	key contentSourceID		: CommonModel.AdminKey;
	key primaryStatusCode	: CommonModel.AdminKey;
	key secondaryStatusCode	: CommonModel.AdminKey;
	key locale				: CommonModel.LanguageCode @(title: '{i18n>locale}', Common.Label: '{i18n>locale}');
	description				: CommonModel.Description @(title: '{i18n>description}', Common.Label: '{i18n>description}');
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
