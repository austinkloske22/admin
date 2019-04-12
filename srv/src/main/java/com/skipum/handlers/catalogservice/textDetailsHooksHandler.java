package  com.skipum.handlers.catalogservice;

import com.sap.cloud.sdk.service.prov.api.EntityData;
import com.sap.cloud.sdk.service.prov.api.ExtensionHelper;
import com.sap.cloud.sdk.service.prov.api.annotations.BeforeCreate;
import com.sap.cloud.sdk.service.prov.api.annotations.BeforeQuery;
import com.sap.cloud.sdk.service.prov.api.exits.BeforeCreateResponse;
import com.sap.cloud.sdk.service.prov.api.exits.BeforeQueryResponse;
import com.sap.cloud.sdk.service.prov.api.request.CreateRequest;
import com.sap.cloud.sdk.service.prov.api.request.QueryRequest;

/***
 * Handler class for persisted entity "textDetails" of service "CatalogService".
 * This handler registers custom handlers for before / after operation hooks.
 * For more information, see: https://help.sap.com/viewer/65de2977205c403bbc107264b8eccf4b/Cloud/en-US/94c7b69cc4584a1a9dfd9cb2da295d5e.html
 */
public class textDetailsHooksHandler {
	
	public static void main(String[] args) {
		
	}
	private static String PARENT_UUID = "null";
	private static final String ELEMENT_PARENT_UUID = "parentUUID";
	
	
	public static String GetParentUUID() {
		return PARENT_UUID;
	}
	
	private static void SetParentUUID(String im_uuid) {
		PARENT_UUID = im_uuid;
	}
	
	
	
//	@BeforeRead(entity = "textDetails", serviceName = "CatalogService")
//	public BeforeReadResponse beforeReadtextDetails(ReadRequest req, ExtensionHelper helper) {
//		//TODO: add your custom logic / validations here...
//
//		return BeforeReadResponse.setSuccess().response(); //use this API if validation checks are successful.
//		//return BeforeReadResponse.setError(ErrorResponse.getBuilder().setMessage("You are not authorized to read this item").response()); //use this API if your validation checks fail
//	}

//	@AfterRead(entity = "textDetails", serviceName = "CatalogService")
//	public ReadResponse afterReadtextDetails(ReadRequest req, ReadResponseAccessor res, ExtensionHelper helper) {

//		String parentUuid = req.getSourceKeys().get("UUID").toString();
//		PARENT_UUID = parentUuid;
		
	
//		return res.getOriginalResponse(); //use this API if no change is required and the original response can be returned as output.
//		//return ReadResponse.setSuccess().setData(data).response(); //use this API if the payload is modified.
//		//return ReadResponse.setError(ErrorResponse.getBuilder().setMessage("Read Operation Failed").response()); //use this API if should return error response.
//	}
	
	
	
	@BeforeQuery(entity = "textDetails", serviceName = "CatalogService")
	public BeforeQueryResponse beforeQuerytextDetails(QueryRequest req, ExtensionHelper helper) {
		String sourceUuid = req.getSourceKeys().get("UUID").toString();
		SetParentUUID(sourceUuid);
		
		return BeforeQueryResponse.setSuccess().response(); //use this API if validation checks are successful.
		//return BeforeQueryResponse.setError(ErrorResponse.getBuilder().setMessage("You are not authorized to query this entity").response()); //use this API if any validation checks fail.
	}

//	@AfterQuery(entity = "textDetails", serviceName = "CatalogService")
//	public QueryResponse afterQuerytextDetails(QueryRequest req, QueryResponseAccessor res, ExtensionHelper helper) {
//		List<EntityData> dataList = res.getEntityDataList(); //original list
//		//TODO: add your custom logic / validations here...
//
//		return res.getOriginalResponse(); //use this API if no change is required and the original response can be returned as output.
//		//return QueryResponse.setSuccess().setData(dataList).response(); //use this API if the payload is modified.
//		//return QueryResponse.setError(ErrorResponse.getBuilder().setMessage("Query Operation Failed").response()); //use this API if should return error response.
//	}

	@BeforeCreate(entity = "textDetails", serviceName = "CatalogService")
	public BeforeCreateResponse beforeCreatetextDetails(CreateRequest cr, ExtensionHelper eh) {
		EntityData data = cr.getData();
		EntityData dataNew = null;
		dataNew = EntityData.getBuilder(data).addElement(ELEMENT_PARENT_UUID, GetParentUUID()).buildEntityData("textDetails");
		return BeforeCreateResponse.setSuccess().setEntityData(dataNew).response(); //use this API if the payload is modified. 
	}

//	@AfterCreate(entity = "textDetails", serviceName = "CatalogService")
//	public CreateResponse afterCreatetextDetails(CreateRequest req, CreateResponseAccessor res, ExtensionHelper helper) {
//		//TODO: add your custom logic / validations here...
//
//		return res.getOriginalResponse(); //use this API if operation succeeded and payload has not been modified.
//		//return CreateResponse.setError(ErrorResponse.getBuilder().setMessage("Create Operation Failed").response()); //use this API if should return error response.
//	}

//	@BeforeUpdate(entity = "textDetails", serviceName = "CatalogService")
//	public BeforeUpdateResponse beforeUpdatetextDetails(UpdateRequest req, ExtensionHelper helper) {
//		EntityData data = req.getData();
//		//TODO: add your custom logic / validations here...
//
//		return BeforeUpdateResponse.setSuccess().response(); //use this API if the payload has not been modified.
//		//return BeforeUpdateResponse.setSuccess().setEntityData(data).response(); //use this API if the payload is modified.
//		//return BeforeUpdateResponse.setError(ErrorResponse.getBuilder().setMessage("You are not authorized to update this item.").response()); //use this API if any validation checks fail.
//	}

//	@AfterUpdate(entity = "textDetails", serviceName = "CatalogService")
//	public UpdateResponse afterUpdatetextDetails(UpdateRequest req, UpdateResponseAccessor res, ExtensionHelper helper) {
//		//TODO: add your custom logic / validations here...
//
//		return res.getOriginalResponse(); //use this API if operation succeeded and payload has not been modified.
//		//return UpdateResponse.setError(ErrorResponse.getBuilder().setMessage("Update Operation Failed").response()); //use this API if should return error response.
//	}

//	@BeforeDelete(entity = "textDetails", serviceName = "CatalogService")
//	public BeforeDeleteResponse beforeDeletetextDetails(DeleteRequest req, ExtensionHelper helper) {
		
		// Delete dependent stock data
		
		//TODO: add your custom logic / validations here...

//		return BeforeDeleteResponse.setSuccess().response(); //use this API if validation checks are successful.
		//return BeforeDeleteResponse.setError(ErrorResponse.getBuilder().setMessage("You are not authorized to delete this item.").response()); //use this API if your validation checks fail
//	}

//	@AfterDelete(entity = "textDetails", serviceName = "CatalogService")
//	public DeleteResponse afterDeletetextDetails(DeleteRequest req, DeleteResponseAccessor res, ExtensionHelper helper) {
//		//TODO: add your custom logic / validations here...
//
//		return res.getOriginalResponse(); //use this API if operation succeeded and payload has not been modified.
//		//return DeleteResponse.setError(ErrorResponse.getBuilder().setMessage("Delete Operation Failed").response()); //use this API if should return error response.
//	}

}