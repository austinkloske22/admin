namespace admin.commonModel;

using admin as admin from './data-model';

type adminKey		: String(60);
type languageCode	: String(2);
type description	: String(255);


entity textDetail {
	key UUID		: UUID;
	key locale		: commonModel.languageCode @(title: '{i18n>locale}', Common.Label: '{i18n>locale}');
	description		: commonModel.description @(title: '{i18n>description}', Common.Label: '{i18n>description}');
    feedType		: Association to one admin.feedType on feedType.UUID = $self.UUID;
    errorMessage	: Association to one admin.errorMessage on errorMessage.UUID = $self.UUID;
    contentSource	: Association to one admin.contentSource on contentSource.UUID = $self.UUID;
    contentAction	: Association to one admin.contentAction on contentAction.UUID = $self.UUID;
}