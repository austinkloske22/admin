using CatalogService from './cat-service';

annotate CatalogService.FeedTypes with @(

	UI.SelectionFields: [ feedTypeID ],
	
	UI.LineItem: 
		[{$Type: 'UI.DataField', Value: feedTypeID, "@UI.Importance": #High, Label: '{i18n>feedType}'}],
	
	UI.PresentationVariant: {
		SortOrder: [ {$Type: 'Common.SortOrderType', Property: feedTypeID, Descending: false}]
	},
// ---------------------------------------------------------------------------
// Object Page
// ---------------------------------------------------------------------------
	UI.HeaderInfo: {
		TypeName: '{i18n>feedType}',
		TypeNamePlural: '{i18n>feedType_Plural}',
		Title: {Value: feedTypeID}
	},
		
	//Page Facets
	UI.Facets: [
		{$Type: 'UI.ReferenceFacet', Target: '@UI.FieldGroup', "@UI.Importance": #High},
		{$Type: 'UI.ReferenceFacet', Target: 'TextDetails/@UI.LineItem', "@UI.Importance": #High}
	],
		
	UI.FieldGroup: {
		Data: [
			{$Type: 'UI.DataField', Value: feedTypeID, Label: '{i18n>feedType}',  }
		]
	}
);

annotate CatalogService.FeedTypeTextDetails with @(
	
	UI.HeaderInfo: {
		TypeName: '{i18n>textDetails}',
		TypeNamePlural: '{i18n>textDetails_Plural}',
		Title: {Value: feedTypeID}
	},
	
	UI.LineItem: [
		{$Type: 'UI.DataField', Value: locale, "@UI.Importance": #High, Label: '{i18n>locale}'},
		{$Type: 'UI.DataField', Value: description, "@UI.Importance": #High, Label: '{i18n>description}'}
	],

	UI.PresentationVariant: {
		SortOrder: [ {$Type: 'Common.SortOrderType', Property: locale, Descending: false} ]
	},
	
// ---------------------------------------------------------------------------
// Object Page
// ---------------------------------------------------------------------------
	//Page Facets
	UI.Facets: [
		{$Type: 'UI.ReferenceFacet', Target: '@UI.FieldGroup', "@UI.Importance": #High},
		{$Type: 'UI.ReferenceFacet', Target: '@UI.LineItem', "@UI.Importance": #High}
	],
	UI.FieldGroup: {
		Data: [
			{$Type: 'UI.DataField', Value: locale, Label: '{i18n>locale}'},
			{$Type: 'UI.DataField', Value: description, Label: '{i18n>description}'},
		]
	}
);

annotate CatalogService.ContentValues with @(
	
	UI.LineItem: [
		{$Type: 'UI.DataField', Value: contentKey, "@UI.Importance": #High, Label: '{i18n>contentKey}'},
		{$Type: 'UI.DataField', Value: contentValue, "@UI.Importance": #High, Label: '{i18n>contentValue}'}
	],
		
	UI.PresentationVariant: {
		SortOrder: [ {$Type: 'Common.SortOrderType', Property: contentKey, Descending: false} ]
	},
	
// ---------------------------------------------------------------------------
// Object Page
// ---------------------------------------------------------------------------
	UI.HeaderInfo: {
		TypeName: '{i18n>contentValue}',
		TypeNamePlural: '{i18n>contentValue_Plural}',
		Title: {Value: contentKey}
	},
		
	//Page Facets
	UI.Facets: [
		{$Type: 'UI.ReferenceFacet', Target: '@UI.FieldGroup', "@UI.Importance": #High},
		{$Type: 'UI.ReferenceFacet', Target: 'TextDetails/@UI.LineItem', "@UI.Importance": #High}
	],

	UI.FieldGroup: {
		Data: [
			{$Type: 'UI.DataField', Value: contentKey, Label: '{i18n>contentKey}',  },
			{$Type: 'UI.DataField', Value: contentValue, Label: '{i18n>contentValue}',  }
		]
	}
);

annotate CatalogService.ContentValueTextDetails with @(
	
	UI.HeaderInfo: {
		TypeName: '{i18n>textDetails}',
		TypeNamePlural: '{i18n>textDetails_Plural}',
		Title: {Value: contentKeyID}
	},
	
	UI.LineItem: [
		{$Type: 'UI.DataField', Value: locale, "@UI.Importance": #High, Label: '{i18n>locale}'},
		{$Type: 'UI.DataField', Value: description, "@UI.Importance": #High, Label: '{i18n>description}'}
	],

	UI.PresentationVariant: {
		SortOrder: [ {$Type: 'Common.SortOrderType', Property: locale, Descending: false} ]
	},
	
// ---------------------------------------------------------------------------
// Object Page
// ---------------------------------------------------------------------------
	//Page Facets
	UI.Facets: [
		{$Type: 'UI.ReferenceFacet', Target: '@UI.FieldGroup', "@UI.Importance": #High},
		{$Type: 'UI.ReferenceFacet', Target: '@UI.LineItem', "@UI.Importance": #High}
	],
	UI.FieldGroup: {
		Data: [
			{$Type: 'UI.DataField', Value: locale, Label: '{i18n>locale}'},
			{$Type: 'UI.DataField', Value: description, Label: '{i18n>description}'},
		]
	}
);

annotate CatalogService.ContentActions with @(

	UI.SelectionFields: [ contentActionID ],
	
	// errorMessage List
	UI.LineItem: [
		{$Type: 'UI.DataField', Value: contentActionID, "@UI.Importance": #High, Label: '{i18n>contentAction}'}
	],
		
	UI.PresentationVariant: {
		SortOrder: [ {$Type: 'Common.SortOrderType', Property: contentActionID, Descending: false} ]
	},
	
// ---------------------------------------------------------------------------
// Object Page
// ---------------------------------------------------------------------------
	UI.HeaderInfo: {
		TypeName: '{i18n>contentAction}',
		TypeNamePlural: '{i18n>contentAction_Plural}',
		Title: {Value: contentActionID}
	},
		
	//Page Facets
	UI.Facets: [
		{$Type: 'UI.ReferenceFacet', Target: '@UI.FieldGroup', "@UI.Importance": #High},
		{$Type: 'UI.ReferenceFacet', Target: 'TextDetails/@UI.LineItem', "@UI.Importance": #High}
	],
		
	UI.FieldGroup: {
		Data: [
			{$Type: 'UI.DataField', Value: contentActionID, Label: '{i18n>contentAction}',  }
		]
	}
);

annotate CatalogService.ContentActionTextDetails with @(
	
	UI.HeaderInfo: {
		TypeName: '{i18n>textDetails}',
		TypeNamePlural: '{i18n>textDetails_Plural}',
		Title: {Value: contentActionID}
	},
	
	UI.LineItem: [
		{$Type: 'UI.DataField', Value: locale, "@UI.Importance": #High, Label: '{i18n>locale}'},
		{$Type: 'UI.DataField', Value: description, "@UI.Importance": #High, Label: '{i18n>description}'}
	],

	UI.PresentationVariant: {
		SortOrder: [ {$Type: 'Common.SortOrderType', Property: locale, Descending: false} ]
	},
	
// ---------------------------------------------------------------------------
// Object Page
// ---------------------------------------------------------------------------
	//Page Facets
	UI.Facets: [
		{$Type: 'UI.ReferenceFacet', Target: '@UI.FieldGroup', "@UI.Importance": #High},
		{$Type: 'UI.ReferenceFacet', Target: '@UI.LineItem', "@UI.Importance": #High}
	],
	UI.FieldGroup: {
		Data: [
			{$Type: 'UI.DataField', Value: locale, Label: '{i18n>locale}'},
			{$Type: 'UI.DataField', Value: description, Label: '{i18n>description}'},
		]
	}
);

annotate CatalogService.ContentSourceCarriers with @(
	
	UI.HeaderInfo: {
		TypeName: '{i18n>contentSourceCarrier}',
		TypeNamePlural: '{i18n>contentSourceCarrier_Plural}',
		Title: {Value: contentSourceCarrierID}
	},
	
	UI.LineItem: [
		{$Type: 'UI.DataField', Value: contentSourceCarrierID, "@UI.Importance": #High, Label: '{i18n>contentSourceCarrier}'},
	],
		
	UI.PresentationVariant: {
		SortOrder: [ {$Type: 'Common.SortOrderType', Property: contentSourceCarrierID, Descending: false} ]
	},
	
// ---------------------------------------------------------------------------
// Object Page
// ---------------------------------------------------------------------------
	//Page Facets
	UI.Facets: [
		{$Type: 'UI.ReferenceFacet', Target: '@UI.FieldGroup', "@UI.Importance": #High},
		{$Type: 'UI.ReferenceFacet', Target: 'TextDetails/@UI.LineItem', "@UI.Importance": #High}
	],
	UI.FieldGroup: {
		Data: [
			{$Type: 'UI.DataField', Value: contentSourceCarrierID, Label: '{i18n>contentSourceCarrier}'}
		]
	}
);



annotate CatalogService.ErrorMessages with @(

	UI.SelectionFields: [ errorMessageID ],
	
	// errorMessage List
	UI.LineItem: [
		{$Type: 'UI.DataField', Value: errorMessageID, "@UI.Importance": #High, Label: '{i18n>errorMessage}'}
	],
	
	UI.PresentationVariant: {
		SortOrder: [ {$Type: 'Common.SortOrderType', Property: errorMessageID, Descending: false} ]
	},
	
// ---------------------------------------------------------------------------
// Object Page
// ---------------------------------------------------------------------------
	UI.HeaderInfo: {
		TypeName: '{i18n>errorMessage}',
		TypeNamePlural: '{i18n>errorMessage_Plural}',
		Title: {Value: errorMessageID}
	},
		
	//Page Facets
	UI.Facets: [
		{$Type: 'UI.ReferenceFacet', Target: '@UI.FieldGroup', "@UI.Importance": #High},
		{$Type: 'UI.ReferenceFacet', Target: 'TextDetails/@UI.LineItem', "@UI.Importance": #High}
	],
		
	UI.FieldGroup: {
		Data: [
			{$Type: 'UI.DataField', Value: errorMessageID, Label: '{i18n>errorMessage}',  }
		]
	}
);

annotate CatalogService.ErrorMessageTextDetails with @(
	
	UI.HeaderInfo: {
		TypeName: '{i18n>textDetails}',
		TypeNamePlural: '{i18n>textDetails_Plural}',
		Title: {Value: locale}
	},
	
	UI.LineItem: [
		{$Type: 'UI.DataField', Value: locale, "@UI.Importance": #High, Label: '{i18n>locale}'},
		{$Type: 'UI.DataField', Value: description, "@UI.Importance": #High, Label: '{i18n>description}'}
	],

	UI.PresentationVariant: {
		SortOrder: [ {$Type: 'Common.SortOrderType', Property: locale, Descending: false} ]
	},
	
// ---------------------------------------------------------------------------
// Object Page
// ---------------------------------------------------------------------------
	//Page Facets
	UI.Facets: [
		{$Type: 'UI.ReferenceFacet', Target: '@UI.FieldGroup', "@UI.Importance": #High},
		{$Type: 'UI.ReferenceFacet', Target: '@UI.LineItem', "@UI.Importance": #High}
	],
	UI.FieldGroup: {
		Data: [
			{$Type: 'UI.DataField', Value: locale, Label: '{i18n>locale}'},
			{$Type: 'UI.DataField', Value: description, Label: '{i18n>description}'},
		]
	}
);

annotate CatalogService.ContentSourceStatuss with @(

	UI.LineItem: [
		{$Type: 'UI.DataField', Value: primaryStatusCode, "@UI.Importance": #High, Label: '{i18n>primaryStatusCode}'},
		{$Type: 'UI.DataField', Value: secondaryStatusCode, "@UI.Importance": #High, Label: '{i18n>secondaryStatusCode}'},
		{$Type: 'UI.DataField', Value: normalizedStatusCode, "@UI.Importance": #High, Label: '{i18n>normalizedStatusCode}'},
		{$Type: 'UI.DataField', Value: initialDeliveryAttempt, "@UI.Importance": #High, Label: '{i18n>initialDeliveryAttempt}'}
		],
	
	UI.PresentationVariant: {
		SortOrder: [ {$Type: 'Common.SortOrderType', Property: primaryStatusCode, Descending: false}]
	},
// ---------------------------------------------------------------------------
// Object Page
// ---------------------------------------------------------------------------
	UI.HeaderInfo: {
		TypeName: '{i18n>contentSourceStatus}',
		TypeNamePlural: '{i18n>contentSourceStatus_Plural}',
		Title: {Value: contentSourceID}
	},
		
	//Page Facets
	UI.Facets: [
		{$Type: 'UI.ReferenceFacet', Target: '@UI.FieldGroup', "@UI.Importance": #High},
		{$Type: 'UI.ReferenceFacet', Target: 'TextDetails/@UI.LineItem', "@UI.Importance": #High}
	],

	UI.FieldGroup: {
		Data: [
			{$Type: 'UI.DataField', Value: primaryStatusCode, Label: '{i18n>primaryStatusCode}'},
			{$Type: 'UI.DataField', Value: secondaryStatusCode, Label: '{i18n>secondaryStatusCode}'},
			{$Type: 'UI.DataField', Value: normalizedStatusCode, Label: '{i18n>normalizedStatusCode}'},
			{$Type: 'UI.DataField', Value: initialDeliveryAttempt, Label: '{i18n>initialDeliveryAttempt}'}
		]
	}
);


annotate CatalogService.ContentSources with @(

	UI.SelectionFields: [ contentSourceID ],
	
	UI.LineItem: 
		[{$Type: 'UI.DataField', Value: contentSourceID, "@UI.Importance": #High, Label: '{i18n>ContentSources}'}],
	
	UI.PresentationVariant: {
		SortOrder: [ {$Type: 'Common.SortOrderType', Property: contentSourceID, Descending: false}]
	},
// ---------------------------------------------------------------------------
// Object Page
// ---------------------------------------------------------------------------
	UI.HeaderInfo: {
		TypeName: '{i18n>contentSource}',
		TypeNamePlural: '{i18n>contentSource_Plural}',
		Title: {Value: contentSourceID}
	},
		
	//Page Facets
	UI.Facets: [
		{$Type: 'UI.ReferenceFacet', Target: '@UI.FieldGroup', "@UI.Importance": #High},
		{$Type: 'UI.ReferenceFacet', Target: 'ContentValues/@UI.LineItem', "@UI.Importance": #High},
		{$Type: 'UI.ReferenceFacet', Target: 'ContentSourceCarriers/@UI.LineItem', "@UI.Importance": #High},
		{$Type: 'UI.ReferenceFacet', Target: 'ContentSourceStatuss/@UI.LineItem', "@UI.Importance": #High},
		{$Type: 'UI.ReferenceFacet', Target: 'ContentActionAssignments/@UI.LineItem', "@UI.Importance": #High},
		{$Type: 'UI.ReferenceFacet', Target: 'TextDetails/@UI.LineItem', "@UI.Importance": #High}
	],
		
	UI.FieldGroup: {
		Data: [
			{$Type: 'UI.DataField', Value: contentSourceID, Label: '{i18n>contentSource}',  }
		]
	}
);

annotate CatalogService.CarrierMasters with @(
	
	UI.SelectionFields: [ carrierMasterID ],
	 
	UI.LineItem: [
		{$Type: 'UI.DataField', Value: carrierMasterID, "@UI.Importance": #High, Label: '{i18n>carrierMaster}'},
		{$Type: 'UI.DataField', Value: status, "@UI.Importance": #High, Label: '{i18n>status}'}
	],
	
	UI.PresentationVariant: {
		SortOrder: [ {$Type: 'Common.SortOrderType', Property: carrierMasterID, Descending: false}]
	},
	
	UI.HeaderInfo: {
		TypeName: '{i18n>carrierMaster}',
		TypeNamePlural: '{i18n>carrierMaster_Plural}',
		Title: {Value: carrierMasterID},
		ImageUrl: logoURL
	},
	
	UI.Facets: [
		{$Type: 'UI.ReferenceFacet', Target: '@UI.FieldGroup', "@UI.Importance": #High},
		{$Type: 'UI.ReferenceFacet', Target: 'TextDetails/@UI.LineItem', "@UI.Importance": #High}
	],

	UI.FieldGroup: {
		Data: [
			{$Type: 'UI.DataField', Value: carrierMasterID, Label: '{i18n>carrierMaster}'},
			{$Type: 'UI.DataField', Value: logoURL, Label: '{i18n>logoURL}'},
			{$Type: 'UI.DataField', Value: status, Label: '{i18n>status}'}
		]
	}
);

annotate CatalogService.CarrierMasterTextDetails with @(
	
	UI.LineItem: [
		{$Type: 'UI.DataField', Value: locale, "@UI.Importance": #High, Label: '{i18n>locale}'},
		{$Type: 'UI.DataField', Value: description, "@UI.Importance": #High, Label: '{i18n>description}'}
	],

	UI.PresentationVariant: {
		SortOrder: [ {$Type: 'Common.SortOrderType', Property: locale, Descending: false} ]
	},
	
// ---------------------------------------------------------------------------
// Object Page
// ---------------------------------------------------------------------------
	//Page Facets
	
	UI.HeaderInfo: {
		TypeName: '{i18n>carrierMaster}',
		TypeNamePlural: '{i18n>carrierMaster_Plural}',
		Title: {Value: "CarrierMaster/carrierMasterID"},
		ImageUrl: "CarrierMaster/logoURL"
	},
	
	UI.Facets: [
		{$Type: 'UI.ReferenceFacet', Target: '@UI.FieldGroup', "@UI.Importance": #High},
		{$Type: 'UI.ReferenceFacet', Target: '@UI.LineItem', "@UI.Importance": #High}
	],
	
	
	UI.FieldGroup: {
		Data: [
			{$Type: 'UI.DataField', Value: locale, Label: '{i18n>locale}'},
			{$Type: 'UI.DataField', Value: description, Label: '{i18n>description}'},
		]
	}
);