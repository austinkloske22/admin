namespace Admin.DraftModel;
using Admin.CommonModel as CommonModel from './Common-Model.cds';

entity CarrierMaster {
	key carrierMasterID	: CommonModel.AdminKey;
	logoURL				: CommonModel.LongString;
	status				: Boolean;
	HasDraftEntity				: Boolean;
	HasActiveEntity				: Boolean;
	HasDraft					: Boolean;
	HasDraftAdministrativeData	: Boolean;
	HasDraftPreparationAction	: Boolean;
	HasDraftRoot				: Boolean;
	HasDraftValidationFunction	: Boolean;
	HasPreserveChanges			: Boolean;
	HasSiblingEntity			: Boolean;
	SiblingEntity				: Boolean;
	IsDraftEnabled				: Boolean;
	IsActiveEntity				: Boolean;
	IsDraftRoot					: Boolean;
	DraftAdministrativeData		: Boolean;
}

entity CarrierMasterTextDetail {
	key carrierMasterID : CommonModel.AdminKey;
	key locale			: CommonModel.LanguageCode;
	description			: CommonModel.Description;
	HasDraftEntity				: Boolean;
	HasActiveEntity				: Boolean;
	HasDraft					: Boolean;
	HasDraftAdministrativeData	: Boolean;
	HasDraftPreparationAction	: Boolean;
	HasDraftRoot				: Boolean;
	HasDraftValidationFunction	: Boolean;
	HasPreserveChanges			: Boolean;
	HasSiblingEntity			: Boolean;
	SiblingEntity				: Boolean;
	IsDraftEnabled				: Boolean;
	IsActiveEntity				: Boolean;
	IsDraftRoot					: Boolean;
	DraftAdministrativeData		: Boolean;
}

