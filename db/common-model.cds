namespace admin.commonModel;

using admin as admin from './data-model';
using admin.assignmentModel as assignmentModel from './assignment-model';

type adminKey		: String(60);
type languageCode	: String(2);
type description	: String(255);

entity textDetail {
	key UUID		: UUID;
	key ITEM_UUID	: UUID default 'NULL';
	key locale		: commonModel.languageCode @(title: '{i18n>locale}', Common.Label: '{i18n>locale}');
	description		: commonModel.description @(title: '{i18n>description}', Common.Label: '{i18n>description}');
    feedTypes		: Association to one admin.feedType on feedTypes.UUID = $self.UUID;
    errorMessages	: Association to one admin.errorMessage on errorMessages.UUID = $self.UUID;
    contentSources	: Association to one admin.contentSource on contentSources.UUID = $self.UUID;
    contentActions	: Association to one admin.contentAction on contentActions.UUID = $self.UUID;
    contentActionAssignments	: Association to one assignmentModel.contentActionAssignment on contentActionAssignments.assignmentUUID = $self.UUID;
    contentSourceStatuss		: Association to one admin.contentSourceStatus on contentSourceStatuss.UUID = $self.UUID and contentSourceStatuss.ITEM_UUID = $self.ITEM_UUID;
}