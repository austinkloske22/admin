namespace admin.textDetailModel;

using admin as admin from './data-model';
using admin.assignmentModel as assignmentModel from './assignment-model.cds';
using admin.commonModel as commonModel from './common-model.cds';

entity contentValueTextDetail {
	key contentValue : Association to admin.contentValue;
	key locale		 : commonModel.languageCode @(title: '{i18n>locale}', Common.Label: '{i18n>locale}');
	description		 : commonModel.description @(title: '{i18n>description}', Common.Label: '{i18n>description}');
}