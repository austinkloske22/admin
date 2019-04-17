using Admin as Admin from '../db/Data-Model';
using Admin.CommonModel as CommonModel from '../db/Common-Model';
using Admin.AssignmentModel as AssignmentModel from '../db/Assignment-Model';
using Admin.TextDetailModel as TextDetailModel from '../db/TextDetail-Model';

service CatalogService {

	entity  FeedTypes @(
		Capabilities: {
			InsertRestrictions: {Insertable: true},
			UpdateRestrictions: {Updatable: true},
			DeleteRestrictions: {Deletable: true}
		}
	) as projection on Admin.FeedType;
	
	entity  FeedTypeTextDetails @(
		Capabilities: {
			InsertRestrictions: {Insertable: true},
			UpdateRestrictions: {Updatable: true},
			DeleteRestrictions: {Deletable: true}
		}
	) as projection on TextDetailModel.FeedType;
	
	
	entity  ErrorMessages @(
		Capabilities: {
			InsertRestrictions: {Insertable: true},
			UpdateRestrictions: {Updatable: true},
			DeleteRestrictions: {Deletable: true}
		}
	) as projection on Admin.ErrorMessage;
	
	entity  ErrorMessageTextDetails @(
		Capabilities: {
			InsertRestrictions: {Insertable: true},
			UpdateRestrictions: {Updatable: true},
			DeleteRestrictions: {Deletable: true}
		}
	) as projection on TextDetailModel.ErrorMessage;
	
	entity  ContentActions @(
		Capabilities: {
			InsertRestrictions: {Insertable: true},
			UpdateRestrictions: {Updatable: true},
			DeleteRestrictions: {Deletable: true}
		}
	) as projection on Admin.ContentAction;
	
	entity  ContentActionTextDetails @(
		Capabilities: {
			InsertRestrictions: {Insertable: true},
			UpdateRestrictions: {Updatable: true},
			DeleteRestrictions: {Deletable: true}
		}
	) as projection on TextDetailModel.ContentAction;
	
	entity  ContentSources @(
		Capabilities: {
			InsertRestrictions: {Insertable: true},
			UpdateRestrictions: {Updatable: true},
			DeleteRestrictions: {Deletable: true}
		}
	) as projection on Admin.ContentSource;
	
	entity  ContentSourceTextDetails @(
		Capabilities: {
			InsertRestrictions: {Insertable: true},
			UpdateRestrictions: {Updatable: true},
			DeleteRestrictions: {Deletable: true}
		}
	) as projection on TextDetailModel.ContentSource;
	
	entity  ContentSourceStatuss @(
		Capabilities: {
			InsertRestrictions: {Insertable: true},
			UpdateRestrictions: {Updatable: true},
			DeleteRestrictions: {Deletable: true}
		}
	) as projection on Admin.ContentSourceStatus;
	
	entity  ContentSourceStatusTextDetails @(
		Capabilities: {
			InsertRestrictions: {Insertable: true},
			UpdateRestrictions: {Updatable: true},
			DeleteRestrictions: {Deletable: true}
		}
	) as projection on TextDetailModel.ContentSourceStatus;
	
	entity  ContentValues @(
		Capabilities: {
			InsertRestrictions: {Insertable: true},
			UpdateRestrictions: {Updatable: true},
			DeleteRestrictions: {Deletable: true}
		}
	) as projection on Admin.ContentValue;
	
	entity  ContentValueTextDetails @(
		Capabilities: {
			InsertRestrictions: {Insertable: true},
			UpdateRestrictions: {Updatable: true},
			DeleteRestrictions: {Deletable: true}
		}
	) as projection on TextDetailModel.ContentValue;
	
	entity  ContentActionAssignments @(
		Capabilities: {
			InsertRestrictions: {Insertable: true},
			UpdateRestrictions: {Updatable: true},
			DeleteRestrictions: {Deletable: true}
		}
	) as projection on AssignmentModel.ContentAction;
	
	entity  CarrierMasters @(
		Capabilities: {
			draftEnabled: true,
			writeDraftPersistence: 'ADMIN_DRAFTMODEL_CARRIERMASTER',
			InsertRestrictions: {Insertable: true},
			UpdateRestrictions: {Updatable: true},
			DeleteRestrictions: {Deletable: true}
		}
	) as projection on Admin.CarrierMaster;
	
	entity  CarrierMasterTextDetails @(
		Capabilities: {
			draftEnabled: true,
			writeDraftPersistence: 'ADMIN_DRAFTMODEL_CARRIERMASTERTEXTDETAIL',
			InsertRestrictions: {Insertable: true},
			UpdateRestrictions: {Updatable: true},
			DeleteRestrictions: {Deletable: true}
		}
	) as projection on TextDetailModel.CarrierMaster;
	
	entity  ContentSourceCarriers @(
		Capabilities: {
			InsertRestrictions: {Insertable: true},
			UpdateRestrictions: {Updatable: true},
			DeleteRestrictions: {Deletable: true}
		}
	) as projection on Admin.AssignmentModel.ContentSourceCarrier;
}