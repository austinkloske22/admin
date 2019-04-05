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
		{$Type: 'UI.ReferenceFacet', Target: '@UI.FieldGroup#GeneralInformation', "@UI.Importance": #High},
		{$Type: 'UI.ReferenceFacet', Target: 'textDetails/@UI.LineItem', "@UI.Importance": #High}
	],
		
	UI.FieldGroup#GeneralInformation: {
		Data: [
			{$Type: 'UI.DataField', Value: ID, Label: '{i18n>feedType}',  }
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
		{$Type: 'UI.ReferenceFacet', Target: 'textDetails/@UI.LineItem', "@UI.Importance": #High}
	],
		
	UI.FieldGroup: {
		Data: [
			{$Type: 'UI.DataField', Value: ID, Label: '{i18n>errorMessage}',  }
		]
	}
	
);

annotate CatalogService.textDetails with @(

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
		{$Type: 'UI.ReferenceFacet', Target: '@UI.FieldGroup#GeneralInformation', "@UI.Importance": #High},
		{$Type: 'UI.ReferenceFacet', Target: '@UI.LineItem', "@UI.Importance": #High}
	],
	UI.FieldGroup#GeneralInformation: {
		Data: [
			{$Type: 'UI.DataField', Value: locale, Label: '{i18n>locale}'},
			{$Type: 'UI.DataField', Value: description, Label: '{i18n>description}'},
		]
	}
);

annotate CatalogService.contentSources with @(

	UI.SelectionFields: [ ID ],
	
	// errorMessage List
	UI.LineItem: [
		{$Type: 'UI.DataField', Value: ID, "@UI.Importance": #High, Label: '{i18n>contentSource}'}
	],
		
	UI.PresentationVariant: {
		SortOrder: [ {$Type: 'Common.SortOrderType', Property: ID, Descending: false} ]
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
		{$Type: 'UI.ReferenceFacet', Target: 'textDetails/@UI.LineItem', "@UI.Importance": #High}
	],
		
	UI.FieldGroup: {
		Data: [
			{$Type: 'UI.DataField', Value: ID, Label: '{i18n>contentSource}',  }
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
		{$Type: 'UI.ReferenceFacet', Target: 'textDetails/@UI.LineItem', "@UI.Importance": #High}
	],
		
	UI.FieldGroup: {
		Data: [
			{$Type: 'UI.DataField', Value: ID, Label: '{i18n>contentAction}',  }
		]
	}
);