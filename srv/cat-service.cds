using Admin.Common as Common from '../db/Common-Model.cds';
using Admin.TextDetail as TextDetail from '../db/TextDetail-Model';
using Admin.ContentProvider as ContentProvider from '../db/ContentProvider-Model';
using Admin.CarrierService as CarrierService from '../db/CarrierService-Model';
using Admin.DropdownValue as DropDownValue from '../db/DropdownValue-Model';

service CatalogService {
	
	entity  ContentActions @(
		Capabilities: {
			InsertRestrictions: {Insertable: true},
			UpdateRestrictions: {Updatable: true},
			DeleteRestrictions: {Deletable: true}
		}
	) as projection on ContentProvider.ContentAction;
	
	entity  ContentActionTextDetails @(
		Capabilities: {
			InsertRestrictions: {Insertable: true},
			UpdateRestrictions: {Updatable: true},
			DeleteRestrictions: {Deletable: true}
		}
	) as projection on TextDetail.ContentAction;
	
	entity  FeedTypes @(
		Capabilities: {
			InsertRestrictions: {Insertable: true},
			UpdateRestrictions: {Updatable: true},
			DeleteRestrictions: {Deletable: true}
		}
	) as projection on ContentProvider.FeedType;

	entity  FeedTypeTextDetails @(
		Capabilities: {
			InsertRestrictions: {Insertable: true},
			UpdateRestrictions: {Updatable: true},
			DeleteRestrictions: {Deletable: true}
		}
	) as projection on TextDetail.FeedType;

	entity  ErrorMessages @(
		Capabilities: {
			InsertRestrictions: {Insertable: true},
			UpdateRestrictions: {Updatable: true},
			DeleteRestrictions: {Deletable: true}
		}
	) as projection on DropDownValue.ErrorMessage;
	
	entity  ChargeTypes @(
		Capabilities: {
			InsertRestrictions: {Insertable: true},
			UpdateRestrictions: {Updatable: true},
			DeleteRestrictions: {Deletable: true}
		}
	) as projection on DropDownValue.ChargeType;

	entity  FreightCostCodes @(
		Capabilities: {
			InsertRestrictions: {Insertable: true},
			UpdateRestrictions: {Updatable: true},
			DeleteRestrictions: {Deletable: true}
		}
	) as projection on DropDownValue.FreightCostCode;

	entity  DaysInTransitTypes @(
		Capabilities: {
			InsertRestrictions: {Insertable: true},
			UpdateRestrictions: {Updatable: true},
			DeleteRestrictions: {Deletable: true}
		}
	) as projection on DropDownValue.DaysInTransitType;

	entity  CommitmentTimeTypes @(
		Capabilities: {
			InsertRestrictions: {Insertable: true},
			UpdateRestrictions: {Updatable: true},
			DeleteRestrictions: {Deletable: true}
		}
	) as projection on DropDownValue.CommitmentTimeType;
	
	entity  ErrorMessageTextDetails @(
		Capabilities: {
			InsertRestrictions: {Insertable: true},
			UpdateRestrictions: {Updatable: true},
			DeleteRestrictions: {Deletable: true}
		}
	) as projection on TextDetail.ErrorMessage;
	
	entity  ContentSources @(
		Capabilities: {
			InsertRestrictions: {Insertable: true},
			UpdateRestrictions: {Updatable: true},
			DeleteRestrictions: {Deletable: true}
		}
	) as projection on ContentProvider.ContentSource;
	
	entity  ContentSourceTextDetails @(
		Capabilities: {
			InsertRestrictions: {Insertable: true},
			UpdateRestrictions: {Updatable: true},
			DeleteRestrictions: {Deletable: true}
		}
	) as projection on TextDetail.ContentSource;
	
	entity  ContentSourceStatuss @(
		Capabilities: {
			InsertRestrictions: {Insertable: true},
			UpdateRestrictions: {Updatable: true},
			DeleteRestrictions: {Deletable: true}
		}
	) as projection on ContentProvider.ContentSourceStatus;
	
	entity  ContentSourceStatusTextDetails @(
		Capabilities: {
			InsertRestrictions: {Insertable: true},
			UpdateRestrictions: {Updatable: true},
			DeleteRestrictions: {Deletable: true}
		}
	) as projection on TextDetail.ContentSourceStatus;
	
	entity  ContentSourceValues @(
		Capabilities: {
			InsertRestrictions: {Insertable: true},
			UpdateRestrictions: {Updatable: true},
			DeleteRestrictions: {Deletable: true}
		}
	) as projection on ContentProvider.ContentSourceValue;
	
	entity  ContentSourceValueTextDetails @(
		Capabilities: {
			InsertRestrictions: {Insertable: true},
			UpdateRestrictions: {Updatable: true},
			DeleteRestrictions: {Deletable: true}
		}
	) as projection on TextDetail.ContentSourceValue;
	
	entity  CarrierMasters @(
		Capabilities: {
			InsertRestrictions: {Insertable: true},
			UpdateRestrictions: {Updatable: true},
			DeleteRestrictions: {Deletable: true}
		}
	) as projection on CarrierService.CarrierMaster;
	
	entity  CarrierServiceCategorys @(
		Capabilities: {
			InsertRestrictions: {Insertable: true},
			UpdateRestrictions: {Updatable: true},
			DeleteRestrictions: {Deletable: true}
		}
	) as projection on CarrierService.CarrierServiceCategory;

	entity  CarrierMasterServices @(
		Capabilities: {
			InsertRestrictions: {Insertable: true},
			UpdateRestrictions: {Updatable: true},
			DeleteRestrictions: {Deletable: true}
		}
	) as projection on CarrierService.CarrierMasterService;

	entity  CarrierServiceTypes @(
		Capabilities: {
			InsertRestrictions: {Insertable: true},
			UpdateRestrictions: {Updatable: true},
			DeleteRestrictions: {Deletable: true}
		}
	) as projection on CarrierService.CarrierServiceType;

	entity  CarrierMasterContentActions @(
		Capabilities: {
			InsertRestrictions: {Insertable: true},
			UpdateRestrictions: {Updatable: true},
			DeleteRestrictions: {Deletable: true}
		}
	) as projection on CarrierService.CarrierMasterContentAction;

	entity  CarrierMasterTextDetails @(
		Capabilities: {
			InsertRestrictions: {Insertable: true},
			UpdateRestrictions: {Updatable: true},
			DeleteRestrictions: {Deletable: true}
		}
	) as projection on TextDetail.CarrierMaster;
	
	entity  ContentSourceCarriers @(
		Capabilities: {
			InsertRestrictions: {Insertable: true},
			UpdateRestrictions: {Updatable: true},
			DeleteRestrictions: {Deletable: true}
		}
	) as projection on ContentProvider.ContentSourceCarrier;
	
	entity  ContentSourceActions @(
		Capabilities: {
			InsertRestrictions: {Insertable: true},
			UpdateRestrictions: {Updatable: true},
			DeleteRestrictions: {Deletable: true}
		}
	) as projection on ContentProvider.ContentSourceAction;
	
	entity  ContentSourceActionTextDetails @(
		Capabilities: {
			InsertRestrictions: {Insertable: true},
			UpdateRestrictions: {Updatable: true},
			DeleteRestrictions: {Deletable: true}
		}
	) as projection on TextDetail.ContentSourceAction;

	entity  FreightCostCodeTextDetails @(
		Capabilities: {
			InsertRestrictions: {Insertable: true},
			UpdateRestrictions: {Updatable: true},
			DeleteRestrictions: {Deletable: true}
		}
	) as projection on TextDetail.FreightCostCode;

	entity  ChargeTypeTextDetails @(
		Capabilities: {
			InsertRestrictions: {Insertable: true},
			UpdateRestrictions: {Updatable: true},
			DeleteRestrictions: {Deletable: true}
		}
	) as projection on TextDetail.ChargeType;

	entity  DaysInTransitTypeTextDetails @(
		Capabilities: {
			InsertRestrictions: {Insertable: true},
			UpdateRestrictions: {Updatable: true},
			DeleteRestrictions: {Deletable: true}
		}
	) as projection on TextDetail.DaysInTransitType;

	entity  CommitmentTimeTypeTextDetails @(
		Capabilities: {
			InsertRestrictions: {Insertable: true},
			UpdateRestrictions: {Updatable: true},
			DeleteRestrictions: {Deletable: true}
		}
	) as projection on TextDetail.CommitmentTimeType;

	entity  CarrierServiceTypeTextDetails @(
		Capabilities: {
			InsertRestrictions: {Insertable: true},
			UpdateRestrictions: {Updatable: true},
			DeleteRestrictions: {Deletable: true}
		}
	) as projection on TextDetail.CarrierServiceType;

	entity  CarrierServiceCategoryTextDetails @(
		Capabilities: {
			InsertRestrictions: {Insertable: true},
			UpdateRestrictions: {Updatable: true},
			DeleteRestrictions: {Deletable: true}
		}
	) as projection on TextDetail.CarrierServiceCategory;

	entity  CarrierMasterServiceTextDetails @(
		Capabilities: {
			InsertRestrictions: {Insertable: true},
			UpdateRestrictions: {Updatable: true},
			DeleteRestrictions: {Deletable: true}
		}
	) as projection on TextDetail.CarrierMasterService;
}