using admin.commonModel as commonModel from '../db/common-model';
using admin as admin from '../db/data-model';


service CatalogService {

	entity  feedTypes @(
		Capabilities: {
			InsertRestrictions: {Insertable: true},
			UpdateRestrictions: {Updatable: true},
			DeleteRestrictions: {Deletable: true}
		}
	) as projection on admin.feedType;
	
	entity  errorMessages @(
		Capabilities: {
			InsertRestrictions: {Insertable: true},
			UpdateRestrictions: {Updatable: true},
			DeleteRestrictions: {Deletable: true}
		}
	) as projection on admin.errorMessage;
	
	entity textDetails @(
		title: '{i18n>textDetailService}',
		Capabilities: {
			InsertRestrictions: {Insertable: true},
			UpdateRestrictions: {Updatable: true},
			DeleteRestrictions: {Deletable: true}
		}
	) as projection on commonModel.textDetail;
	
	entity  contentActions @(
		Capabilities: {
			InsertRestrictions: {Insertable: true},
			UpdateRestrictions: {Updatable: true},
			DeleteRestrictions: {Deletable: true}
		}
	) as projection on admin.contentAction;
	
	entity  contentSources @(
		Capabilities: {
			InsertRestrictions: {Insertable: true},
			UpdateRestrictions: {Updatable: true},
			DeleteRestrictions: {Deletable: true}
		}
	) as projection on admin.contentSource;
	
	entity  contentSourceActions @(
		Capabilities: {
			InsertRestrictions: {Insertable: true},
			UpdateRestrictions: {Updatable: false},
			DeleteRestrictions: {Deletable: true}
		}
	) as projection on admin.contentSourceAction;
}