using CatalogService from './cat-service';

annotate CatalogService.feedTypes with @(

	UI.SelectionFields: [ ID ],
	
	UI.LineItem: 
		[{$Type: 'UI.DataField', Value: ID, "@UI.Importance": #High, Label: '{i18n>feedType}'}],
	
	UI.PresentationVariant: {
		SortOrder: [ {$Type: 'Common.SortOrderType', Property: ID, Descending: false}]
	},
// ---------------------------------------------------------------------------
// Object Page
// ---------------------------------------------------------------------------
	UI.HeaderInfo: {
		TypeName: '{i18n>feedType}',
		TypeNamePlural: '{i18n>feedType_Plural}',
		Title: {Value: ID}
	},
		
	//Page Facets
	UI.Facets: [
		{$Type: 'UI.ReferenceFacet', Target: '@UI.FieldGroup', "@UI.Importance": #High},
		{$Type: 'UI.ReferenceFacet', Target: 'to_textDetails/@UI.LineItem', "@UI.Importance": #High}
	],
		
	UI.FieldGroup: {
		Data: [
			{$Type: 'UI.DataField', Value: ID, Label: '{i18n>feedType}',  }
		]
	}
);

annotate CatalogService.textDetails with @(
	
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

annotate CatalogService.contentActions with @(

	UI.SelectionFields: [ ID ],
	
	// errorMessage List
	UI.LineItem: [
		{$Type: 'UI.DataField', Value: ID, "@UI.Importance": #High, Label: '{i18n>contentAction}'}
	],
		
	UI.PresentationVariant: {
		SortOrder: [ {$Type: 'Common.SortOrderType', Property: ID, Descending: false} ]
	},
	
// ---------------------------------------------------------------------------
// Object Page
// ---------------------------------------------------------------------------
	UI.HeaderInfo: {
		TypeName: '{i18n>contentAction}',
		TypeNamePlural: '{i18n>contentAction_Plural}',
		Title: {Value: ID}
	},
		
	//Page Facets
	UI.Facets: [
		{$Type: 'UI.ReferenceFacet', Target: '@UI.FieldGroup', "@UI.Importance": #High},
		{$Type: 'UI.ReferenceFacet', Target: 'to_textDetails/@UI.LineItem', "@UI.Importance": #High}
	],
		
	UI.FieldGroup: {
		Data: [
			{$Type: 'UI.DataField', Value: ID, Label: '{i18n>contentAction}',  }
		]
	}
);

annotate CatalogService.contentActionAssignments with @(
	
	UI.HeaderInfo: {
		TypeName: '{i18n>contentActionAssignment}',
		TypeNamePlural: '{i18n>contentActionAssignment_Plural}',
		Title: {Value: ID}
	},
	
	UI.LineItem: [
		{$Type: 'UI.DataField', Value: ID, "@UI.Importance": #High, Label: '{i18n>contentActionAssignment}'},
	],
		
	UI.PresentationVariant: {
		SortOrder: [ {$Type: 'Common.SortOrderType', Property: ID, Descending: false} ]
	},
	
// ---------------------------------------------------------------------------
// Object Page
// ---------------------------------------------------------------------------
	//Page Facets
	UI.Facets: [
		{$Type: 'UI.ReferenceFacet', Target: '@UI.FieldGroup', "@UI.Importance": #High},
		{$Type: 'UI.ReferenceFacet', Target: 'to_textDetails/@UI.LineItem', "@UI.Importance": #High}
	],
	UI.FieldGroup: {
		Data: [
			{$Type: 'UI.DataField', Value: ID, Label: '{i18n>contentActionAssignment}'}
		]
	}
);


annotate CatalogService.errorMessages with @(

	UI.SelectionFields: [ ID ],
	
	// errorMessage List
	UI.LineItem: [
		{$Type: 'UI.DataField', Value: ID, "@UI.Importance": #High, Label: '{i18n>errorMessage}'}
	],
	
	UI.PresentationVariant: {
		SortOrder: [ {$Type: 'Common.SortOrderType', Property: ID, Descending: false} ]
	},
	
// ---------------------------------------------------------------------------
// Object Page
// ---------------------------------------------------------------------------
	UI.HeaderInfo: {
		TypeName: '{i18n>errorMessage}',
		TypeNamePlural: '{i18n>errorMessage_Plural}',
		Title: {Value: ID}
	},
		
	//Page Facets
	UI.Facets: [
		{$Type: 'UI.ReferenceFacet', Target: '@UI.FieldGroup', "@UI.Importance": #High},
		{$Type: 'UI.ReferenceFacet', Target: 'to_textDetails/@UI.LineItem', "@UI.Importance": #High}
	],
		
	UI.FieldGroup: {
		Data: [
			{$Type: 'UI.DataField', Value: ID, Label: '{i18n>errorMessage}',  }
		]
	}
);

annotate CatalogService.contentSourceStatuss with @(

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
		Title: {Value: primaryStatusCode}
	},
		
	//Page Facets
	UI.Facets: [
		{$Type: 'UI.ReferenceFacet', Target: '@UI.FieldGroup', "@UI.Importance": #High},
		{$Type: 'UI.ReferenceFacet', Target: 'to_textDetails/@UI.LineItem', "@UI.Importance": #High}
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


annotate CatalogService.contentSources with @(

	UI.SelectionFields: [ ID ],
	
	UI.LineItem: 
		[{$Type: 'UI.DataField', Value: ID, "@UI.Importance": #High, Label: '{i18n>contentSource}'}],
	
	UI.PresentationVariant: {
		SortOrder: [ {$Type: 'Common.SortOrderType', Property: ID, Descending: false}]
	},
// ---------------------------------------------------------------------------
// Object Page
// ---------------------------------------------------------------------------
	UI.HeaderInfo: {
		TypeName: '{i18n>contentSource}',
		TypeNamePlural: '{i18n>contentSource_Plural}',
		Title: {Value: ID}
	},
		
	//Page Facets
	UI.Facets: [
		{$Type: 'UI.ReferenceFacet', Target: '@UI.FieldGroup', "@UI.Importance": #High},
		{$Type: 'UI.ReferenceFacet', Target: 'to_contentSourceStatuss/@UI.LineItem', "@UI.Importance": #High},
		{$Type: 'UI.ReferenceFacet', Target: 'to_contentActionAssignments/@UI.LineItem', "@UI.Importance": #High},
		{$Type: 'UI.ReferenceFacet', Target: 'to_carrierMasterNormalizations/@UI.LineItem', "@UI.Importance": #High},
		{$Type: 'UI.ReferenceFacet', Target: 'to_textDetails/@UI.LineItem', "@UI.Importance": #High}
	],
		
	UI.FieldGroup: {
		Data: [
			{$Type: 'UI.DataField', Value: ID, Label: '{i18n>contentSource}',  }
		]
	}
);

annotate CatalogService.carrierMasterNormalizations with @(

	UI.LineItem: [
		{$Type: 'UI.DataField', Value: ID, "@UI.Importance": #High, Label: '{i18n>carrierMaster}'},
		{$Type: 'UI.DataField', Value: normalizedID, "@UI.Importance": #High, Label: '{i18n>contentSourceCarrier}'}
		],
	
	UI.PresentationVariant: {
		SortOrder: [ {$Type: 'Common.SortOrderType', Property: primaryStatusCode, Descending: false}]
	},
// ---------------------------------------------------------------------------
// Object Page
// ---------------------------------------------------------------------------
	UI.HeaderInfo: {
		TypeName: '{i18n>carrierMasterNormalization}',
		TypeNamePlural: '{i18n>carrierMasterNormalization_Plural}',
		Title: {Value: ID}
	},
		
	//Page Facets
	UI.Facets: [
		{$Type: 'UI.ReferenceFacet', Target: '@UI.FieldGroup', "@UI.Importance": #High},
		{$Type: 'UI.ReferenceFacet', Target: 'to_textDetails/@UI.LineItem', "@UI.Importance": #High}
	],

	UI.FieldGroup: {
		Data: [
			{$Type: 'UI.DataField', Value: ID, Label: '{i18n>carrierMaster}'},
			{$Type: 'UI.DataField', Value: normalizedID, Label: '{i18n>contentSourceCarrier}'}
		]
	}
);