package  com.skipum.handlers.catalogservice; 

import com.sap.cloud.sdk.service.prov.api.*;
import com.sap.cloud.sdk.service.prov.api.annotations.*;
import com.sap.cloud.sdk.service.prov.api.exits.*;
import com.sap.cloud.sdk.service.prov.api.request.*;
import com.sap.cloud.sdk.service.prov.api.response.*;
import com.sap.cloud.sdk.service.prov.api.ExtensionHelper;

import java.util.HashMap;
import java.util.Map;

/***
 * Handler class for persisted entity "contentSourceStatuss" of service "CatalogService".
 * This handler registers custom handlers for before / after operation hooks.
 * For more information, see: https://help.sap.com/viewer/65de2977205c403bbc107264b8eccf4b/Cloud/en-US/94c7b69cc4584a1a9dfd9cb2da295d5e.html
 */
public class contentSourceStatussHooksHandler {
	private static final String ENTITY_TEXTDETAILS = "textDetails";
	private static final String ELEMENT_UUID = "UUID", ELEMENT_PARENTUUID = "parentUUID";

	private static String PARENT_UUID = "null";
	private static final String ELEMENT_PARENT_UUID = "parentUUID";
	
	public static String GetParentUUID() {
		return PARENT_UUID;
	}
	
	private static void SetParentUUID(String im_uuid) {
		PARENT_UUID = im_uuid;
	}
//	@BeforeRead(entity = "contentSourceStatuss", serviceName = "CatalogService")
//	public BeforeReadResponse beforeReadcontentSourceStatuss(ReadRequest req, ExtensionHelper helper) {
//		//TODO: add your custom logic / validations here...
//
//		return BeforeReadResponse.setSuccess().response(); //use this API if validation checks are successful.
//		//return BeforeReadResponse.setError(ErrorResponse.getBuilder().setMessage("You are not authorized to read this item").response()); //use this API if your validation checks fail
//	}

//	@AfterRead(entity = "contentSourceStatuss", serviceName = "CatalogService")
//	public ReadResponse afterReadcontentSourceStatuss(ReadRequest req, ReadResponseAccessor res, ExtensionHelper helper) {
//		EntityData data = res.getEntityData();
//		//TODO: add your custom logic / validations here...
//
//		return res.getOriginalResponse(); //use this API if no change is required and the original response can be returned as output.
//		//return ReadResponse.setSuccess().setData(data).response(); //use this API if the payload is modified.
//		//return ReadResponse.setError(ErrorResponse.getBuilder().setMessage("Read Operation Failed").response()); //use this API if should return error response.
//	}

	@BeforeQuery(entity = "contentSourceStatuss", serviceName = "CatalogService")
	public BeforeQueryResponse beforeQuerytextDetails(QueryRequest req, ExtensionHelper helper) {
		String sourceUuid = req.getSourceKeys().get("UUID").toString();
		SetParentUUID(sourceUuid);
		
		return BeforeQueryResponse.setSuccess().response(); //use this API if validation checks are successful.
		//return BeforeQueryResponse.setError(ErrorResponse.getBuilder().setMessage("You are not authorized to query this entity").response()); //use this API if any validation checks fail.
	}

//	@AfterQuery(entity = "contentSourceStatuss", serviceName = "CatalogService")
//	public QueryResponse afterQuerycontentSourceStatuss(QueryRequest req, QueryResponseAccessor res, ExtensionHelper helper) {
//		List<EntityData> dataList = res.getEntityDataList(); //original list
//		//TODO: add your custom logic / validations here...
//
//		return res.getOriginalResponse(); //use this API if no change is required and the original response can be returned as output.
//		//return QueryResponse.setSuccess().setData(dataList).response(); //use this API if the payload is modified.
//		//return QueryResponse.setError(ErrorResponse.getBuilder().setMessage("Query Operation Failed").response()); //use this API if should return error response.
//	}

	@BeforeCreate(entity = "contentSourceStatuss", serviceName = "CatalogService")
	public BeforeCreateResponse beforeCreatetextDetails(CreateRequest cr, ExtensionHelper eh) {
		EntityData data = cr.getData();
		EntityData dataNew = null;
		dataNew = EntityData.getBuilder(data).addElement(ELEMENT_PARENT_UUID, GetParentUUID()).buildEntityData("textDetails");
		return BeforeCreateResponse.setSuccess().setEntityData(dataNew).response(); //use this API if the payload is modified. 
	}

//	@AfterCreate(entity = "contentSourceStatuss", serviceName = "CatalogService")
//	public CreateResponse afterCreatecontentSourceStatuss(CreateRequest req, CreateResponseAccessor res, ExtensionHelper helper) {
//		//TODO: add your custom logic / validations here...
//
//		return res.getOriginalResponse(); //use this API if operation succeeded and payload has not been modified.
//		//return CreateResponse.setError(ErrorResponse.getBuilder().setMessage("Create Operation Failed").response()); //use this API if should return error response.
//	}

//	@BeforeUpdate(entity = "contentSourceStatuss", serviceName = "CatalogService")
//	public BeforeUpdateResponse beforeUpdatecontentSourceStatuss(UpdateRequest req, ExtensionHelper helper) {
//		EntityData data = req.getData();
//		//TODO: add your custom logic / validations here...
//
//		return BeforeUpdateResponse.setSuccess().response(); //use this API if the payload has not been modified.
//		//return BeforeUpdateResponse.setSuccess().setEntityData(data).response(); //use this API if the payload is modified.
//		//return BeforeUpdateResponse.setError(ErrorResponse.getBuilder().setMessage("You are not authorized to update this item.").response()); //use this API if any validation checks fail.
//	}

//	@AfterUpdate(entity = "contentSourceStatuss", serviceName = "CatalogService")
//	public UpdateResponse afterUpdatecontentSourceStatuss(UpdateRequest req, UpdateResponseAccessor res, ExtensionHelper helper) {
//		//TODO: add your custom logic / validations here...
//
//		return res.getOriginalResponse(); //use this API if operation succeeded and payload has not been modified.
//		//return UpdateResponse.setError(ErrorResponse.getBuilder().setMessage("Update Operation Failed").response()); //use this API if should return error response.
//	}

	@BeforeDelete(entity = "contentSourceStatuss", serviceName = "CatalogService")
		public BeforeDeleteResponse beforeDeletefeedTypes(DeleteRequest req, ExtensionHelper helper) {
		// Delete dependent stock data
		Map<String, Object> keys = new HashMap<String, Object>();
		
		try {
			//EntityData entityData = helper.getHandler().executeRead(ENTITY_FEEDTYPES, keys, Arrays.asList(ELEMENT_PRODUCT_STOCK));
			keys.put(ELEMENT_PARENTUUID, req.getKeys().get(ELEMENT_UUID) );
			helper.getHandler().executeDelete(ENTITY_TEXTDETAILS, keys);
			return BeforeDeleteResponse.setSuccess().response();
		} catch (Exception e) {
			return BeforeDeleteResponse.setError(ErrorResponse.getBuilder().setMessage("You are not authorized to delete this item.").response()); //use this API if your validation checks fail
		}
	}

//	@AfterDelete(entity = "contentSourceStatuss", serviceName = "CatalogService")
//	public DeleteResponse afterDeletecontentSourceStatuss(DeleteRequest req, DeleteResponseAccessor res, ExtensionHelper helper) {
//		//TODO: add your custom logic / validations here...
//
//		return res.getOriginalResponse(); //use this API if operation succeeded and payload has not been modified.
//		//return DeleteResponse.setError(ErrorResponse.getBuilder().setMessage("Delete Operation Failed").response()); //use this API if should return error response.
//	}

}