namespace admin.commonModel;

using admin as admin from './data-model';
using admin.assignmentModel as assignmentModel from './assignment-model.cds';

type adminKey		: String(60);
type languageCode	: String(2);
type description	: String(255);
type longString		: String(1000);

entity textDetail {
	key UUID		: UUID;
	parentUUID		: UUID not null;
	locale			: commonModel.languageCode @(title: '{i18n>locale}', Common.Label: '{i18n>locale}');
	description		: commonModel.description @(title: '{i18n>description}', Common.Label: '{i18n>description}');
    to_feedType				: Association to one admin.feedType on to_feedType.UUID = $self.parentUUID;
    to_errorMessage			: Association to one admin.errorMessage on to_errorMessage.UUID = $self.parentUUID;
    to_contentSource		: Association to one admin.contentSource on to_contentSource.UUID = $self.parentUUID;
    to_contentAction		: Association to one admin.contentAction on to_contentAction.UUID = $self.parentUUID;
    to_carrierMaster		: Association to one admin.carrierMaster on to_carrierMaster.UUID = $self.parentUUID;
}